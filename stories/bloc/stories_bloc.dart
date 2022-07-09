import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youz/app/navigation/navigation_action.dart';
import 'package:youz/core/bloc/bloc_action.dart';
import 'package:youz/domain/entities/story_entity.dart';

part 'stories_bloc.freezed.dart';

part 'stories_event.dart';

part 'stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesBloc({
    required StoryEntity currentStory,
    required List<StoryEntity> stories,
  }) : super(StoriesState(currentStory: currentStory, stories: stories)) {
    on<Init>(_init);
    on<StoryCompleted>(_storyCompleted);
    on<OnCloseClicked>(_onCloseClicked);
    on<OnLongPressed>(_onLongPressed);
    on<OnLongPressCanceled>(_onLongPressCanceled);
    on<OnPreviousPressed>(_onPreviousPressed);
    on<OnNextPressed>(_onNextPressed);
    on<OnButtonClicked>(_onButtonClicked);
    on<VideoInitializing>(_videoInitializing);
    this.add(StoriesEvent.init());
  }

  FutureOr<void> _init(Init event, Emitter<StoriesState> emit) async {
    // List<StoryEntity> stories = [
    //   StoryEntity(
    //     url: 'https://w-dog.ru/wallpapers/11/6/497644127437356/priroda-reka-kamni-gory-les-seryj-den.jpg',
    //     type: StoryType.image,
    //     title: 'bebra',
    //   ),
    //   StoryEntity(
    //     type: StoryType.image,
    //     url: 'https://w-dog.ru/wallpapers/11/6/497644127437356/priroda-reka-kamni-gory-les-seryj-den.jpg',
    //     title: 'Идеальный пикник вместе с YOUZ box и КЕКС',
    //   ),
    //   StoryEntity(
    //     type: StoryType.video,
    //     url: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    //     title: 'Вечеринка в бит вместе с Pioneer DJ',
    //   ),
    // ];
    // emit(state.copyWith(stories: stories));
    emit(state.copyWith(
        action: LoadStory(
          story: state.currentStory,
          needShowFirst: true,
          indexPage: state.stories.indexOf(state.currentStory),
        )));
  }

  FutureOr<void> _storyCompleted(StoryCompleted event, Emitter<StoriesState> emit) async {
    StoryEntity currentStory = state.currentStory;
    List<StoryEntity> stories = List.from(state.stories);
    int currentIndex = stories.indexOf(currentStory);
    if (currentIndex + 1 < stories.length) {
      emit(state.copyWith(
          currentStory: stories[currentIndex + 1],
          action: LoadStory(
            story: stories[currentIndex + 1],
            indexPage: currentIndex + 1,
          )));
    } else {
      emit(state.copyWith(action: NavigateBack()));
    }
  }

  FutureOr<void> _onCloseClicked(OnCloseClicked event, Emitter<StoriesState> emit) async {
    emit(state.copyWith(action: NavigateBack()));
  }

  FutureOr<void> _onLongPressed(OnLongPressed event, Emitter<StoriesState> emit) async {
    emit(state.copyWith(action: PauseStory()));
  }

  FutureOr<void> _videoInitializing(VideoInitializing event, Emitter<StoriesState> emit) async {
      emit(state.copyWith(videoLoading: !state.videoLoading));
  }

  FutureOr<void> _onLongPressCanceled(OnLongPressCanceled event, Emitter<StoriesState> emit) async {
    emit(state.copyWith(action: ContinueStory()));
  }

  FutureOr<void> _onPreviousPressed(OnPreviousPressed event, Emitter<StoriesState> emit) async {
    StoryEntity currentStory = state.currentStory;
    List<StoryEntity> stories = List.from(state.stories);
    int currentIndex = stories.indexOf(currentStory);
    if (currentIndex > 0) {
      emit(state.copyWith(
          currentStory: stories[currentIndex - 1],
          action: LoadStory(
            story: stories[currentIndex - 1],
            indexPage: currentIndex - 1,
          )));
    } else {
      emit(state.copyWith(action: NavigateBack()));
    }
  }

  FutureOr<void> _onNextPressed(OnNextPressed event, Emitter<StoriesState> emit) async {
    StoryEntity currentStory = state.currentStory;
    List<StoryEntity> stories = List.from(state.stories);
    int currentIndex = stories.indexOf(currentStory);
    if (currentIndex + 1 < stories.length) {
      emit(state.copyWith(
          currentStory: stories[currentIndex + 1],
          action: LoadStory(
            story: stories[currentIndex + 1],
            indexPage: currentIndex + 1,
          )));
    } else {
      emit(state.copyWith(action: NavigateBack()));
      emit(state.copyWith(action: StoriesEnd()));
    }
  }

  FutureOr<void> _onButtonClicked(OnButtonClicked event, Emitter<StoriesState> emit) async {}
}
