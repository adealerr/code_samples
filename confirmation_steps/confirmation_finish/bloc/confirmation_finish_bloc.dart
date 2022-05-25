import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youz/core/bloc/bloc_action.dart';

part 'confirmation_finish_bloc.freezed.dart';
part 'confirmation_finish_event.dart';
part 'confirmation_finish_state.dart';

class ConfirmationFinishBloc extends Bloc<ConfirmationFinishEvent, ConfirmationFinishState> {
  ConfirmationFinishBloc()
      : super(ConfirmationFinishState()) {
    on<FurtherClicked>(_onFurtherClicked);
  }

  FutureOr<void> _onFurtherClicked(FurtherClicked event, Emitter<ConfirmationFinishState> emit) async {
    // emit(state.copyWith(action: NavigateToConfirmation(NavigateType.push)));
  }
}