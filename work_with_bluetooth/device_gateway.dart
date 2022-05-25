import 'dart:async';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:rxdart/rxdart.dart';

class DeviceGateway {
  static const double _dischargeVoltage = 3.3;
  static const double _dischargeVoltageWithMargin = 1;
  static const double _fullChargeVoltage = 3.73;

  FlutterBlue _bluetooth = FlutterBlue.instance;
  BluetoothDevice? _device;
  BluetoothCharacteristic? _characteristic;

  StreamSubscription<List<int>>? _characteristicSubscription;
  StreamSubscription<BluetoothDeviceState>? _deviceStateSubscription;
  StreamSubscription<List<BluetoothService>>? _servicesSubscription;
  StreamSubscription? _scanResultsSubscription;

  Timer? _discoverServicesTimer;
  Timer? _deviceChargeTimer;
  Timer? _connectTimer;

  bool _isScanning = false;
  bool _isConnected = false;
  int? _calibRef;
  int? _ref;
  late BehaviorSubject<DeviceStatus> _statusSubject;
  late BehaviorSubject<List<int>> _dataSubject;
  late BehaviorSubject<int?> _deviceChargeSubject;

  DeviceStatus? get status => _statusSubject.value;

  Stream<DeviceStatus> get statusStream => _statusSubject.stream;

  Stream<List<int>> get dataStream => _dataSubject.stream;

  Stream<int?> get chargeStream => _deviceChargeSubject.stream;

  void init() {
    _statusSubject = BehaviorSubject.seeded(DeviceStatus.notFound);
    _dataSubject = BehaviorSubject.seeded([]);
    _deviceChargeSubject = BehaviorSubject.seeded(null);
    _discoverServicesTimer = Timer.periodic(Duration(seconds: 5), (timer) async {
      try {
        if (status != DeviceStatus.readyToUse && _isConnected) {
          await _device!.discoverServices();
        }
      } catch (e) {
        print('');
      }
    });
    //Раз в 5 секунд запрашиваем заряд батареи
    _restartDeviceChargeTimer();
    _scanResultsSubscription = _bluetooth.scanResults.listen(_handleScanResults);
    _connectTimer?.cancel();
    //Раз в 5 секунд запускаем сканирование, если устройство не найдено, либо пытаемся подключиться если найдено и не подключено
    _connectTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (status == DeviceStatus.notConnected || status == DeviceStatus.notFound) {
        try {
          scanningAndConnectDevice();
        } catch (e) {}
      }
    });
    try {
      scanningAndConnectDevice();
    } catch (e) {}
  }

  void _restartDeviceChargeTimer() {
    // _deviceChargeTimer?.cancel();
    // _deviceChargeTimer = Timer.periodic(Duration(seconds: 5), (timer) async {
    //   try {
    //     if (status == DeviceStatus.readyToUse && _isConnected) {
    //       await _characteristic!.write(utf8.encode('AT+CALIB_REF=?'));
    //       await _characteristic!.write(utf8.encode('AT+REF=?'));
    //     }
    //   } catch (e) {
    //     print('');
    //   }
    // });
  }

  void check() async {
    await _characteristic!.write(utf8.encode('AT+REF=?'));
    // List<int> a = await _characteristic!.read();
    String b = '';
  }

  void dispose() {
    if (_isScanning) {
      _bluetooth.stopScan();
    }
    _device?.disconnect();
    _characteristic = null;
    _scanResultsSubscription?.cancel();
    _statusSubject.close();
    _device?.disconnect();
    _deviceStateSubscription?.cancel();
    _characteristicSubscription?.cancel();
    _servicesSubscription?.cancel();
    _discoverServicesTimer?.cancel();
    _deviceChargeTimer?.cancel();
    _connectTimer?.cancel();
  }

  void scanningAndConnectDevice() async {
    try {
      if (status == DeviceStatus.notFound && !_isScanning) {
        _isScanning = true;
        await _bluetooth.startScan();
        _isScanning = false;
      } else if (status == DeviceStatus.notConnected) {
        connectDevice();
      }
    } catch (e) {}
  }

  void _handleScanResults(List<ScanResult> results) async {
    var targetDevices =
        results.where((result) => result.device.name.toLowerCase().contains(RegExp('[a-z]kk'))).toList();
    if (targetDevices.isNotEmpty && status == DeviceStatus.notFound) {
      _statusSubject.add(DeviceStatus.connecting);
      _device = targetDevices.first.device;
      connectDevice();
    }
  }

  Future<void> connectDevice() async {
    try {
      _statusSubject.add(DeviceStatus.connecting);
      _deviceStateSubscription?.cancel();
      _deviceStateSubscription = _device?.state.listen(_handleDeviceState);
      await _device?.connect();
      _servicesSubscription?.cancel();
      _servicesSubscription = _device?.services.listen(_handleServices);
      // await _findServices();
    } catch (e) {
      _statusSubject.add(DeviceStatus.notConnected);
    }
  }

  void _handleServices(List<BluetoothService> services) async {
    //Ищем сервис, по которому нужно записывать/считывать данные
    for (BluetoothService service in services) {
      BluetoothCharacteristic? characteristic = service.characteristics.firstWhereOrNull(
        (BluetoothCharacteristic characteristic) => characteristic.uuid == Guid('0000ffe1-0000-1000-8000-00805f9b34fb'),
      );
      if (characteristic != null) {
        _characteristic = characteristic;
        await _readDataFromDevice();
        _statusSubject.add(DeviceStatus.readyToUse);
        break;
      }
    }
  }

  void _handleDeviceState(BluetoothDeviceState state) {
    switch (state) {
      case BluetoothDeviceState.connected:
        _isConnected = true;
        _statusSubject.add(DeviceStatus.connected);
        break;
      case BluetoothDeviceState.connecting:
        _statusSubject.add(DeviceStatus.connecting);
        break;
      case BluetoothDeviceState.disconnecting:
        _isConnected = false;
        break;
      case BluetoothDeviceState.disconnected:
        _isConnected = false;
        _statusSubject.add(DeviceStatus.notConnected);
        break;
    }
  }

  Future<void> disconnectDevice() async {
    try {
      await _device!.disconnect();
    } catch (e) {}
  }

  Future<void> startReadingData() async {
    try {
      _deviceChargeTimer?.cancel();
      //Запускаем отправку данных записи с устройства
      await _characteristic!.write(utf8.encode('AT+START_DATA'));
    } catch (e) {
      print('');
    }
  }

  Future<void> stopReadingData() async {
    try {
      //Останавливаем отправку данных записи с устройства
      await _characteristic!.write(utf8.encode('AT+STOP_DATA'));
      _restartDeviceChargeTimer();
    } catch (e) {
      print('');
    }
  }

  //
  // Future<void> _findServices() async {
  //   List<BluetoothService> services = await _device!.discoverServices();
  //   while (services.isEmpty) {
  //     services = await _device!.discoverServices();
  //   }
  //   services.forEach((service) {
  //     service.characteristics.forEach((characteristic) async {
  //       if (characteristic.uuid == Guid('0000ffe1-0000-1000-8000-00805f9b34fb')) {
  //         _characteristic = characteristic;
  //       }
  //     });
  //   });
  //   await _readDataFromDevice();
  //   _statusSubject.add(DeviceStatus.readyToUse);
  // }

  Future<void> _readDataFromDevice() async {
    try {
      //Для найденого сервиса включаем возможность подписываться на поток данных
      await _characteristic!.setNotifyValue(true);
      //Устанавливаем sample rate для отправки записи
      await _characteristic!.write(utf8.encode('AT+SAMPLE_RATE_DIV=65536'));
      _characteristicSubscription?.cancel();
      _characteristicSubscription = _characteristic!.value.listen((value) {
        try {
          String result = utf8.decode(value);
          if (result.startsWith('CALIB_REF=')) {
            _calibRef = int.parse(result.replaceAll('CALIB_REF=0x', ''), radix: 16);
            _sendDeviceCharge();
          } else if (result.startsWith('REF=')) {
            _ref = int.parse(result.replaceAll('REF=0x', ''), radix: 16);
            _sendDeviceCharge();
          } else {
            _dataSubject.add(value);
          }
        } catch (e) {}
      });
    } catch (e) {
      print('');
    }
  }

  void _sendDeviceCharge() {
    //Высчитываем заряд батареи по формуле
    if (_calibRef != null && _ref != null) {
      double vBat = _calibRef! * _dischargeVoltage / _ref!;
      print('device charge = $vBat');
      _deviceChargeSubject.add(
        (vBat - _dischargeVoltageWithMargin) * 100 ~/ (_fullChargeVoltage - _dischargeVoltageWithMargin),
      );
    }
  }
}

enum DeviceStatus { notFound, notConnected, connecting, connected, readyToUse }
