part of 'stories_bloc.dart';

@freezed
class StoriesState with _$StoriesState {
  factory StoriesState({
    BlocAction? action,
    @Default(false) bool videoLoading,
    required StoryEntity currentStory,
    @Default([]) List<StoryEntity> stories,
  }) = _StoriesState;
}

class LoadStory extends BlocAction {
  LoadStory({
    required this.story,
    this.needAnimate = true,
    this.needShowFirst = false,
    this.indexPage,
  });

  StoryEntity story;
  bool needAnimate;
  bool needShowFirst;
  int? indexPage;
}

class PauseStory extends BlocAction {}

class ContinueStory extends BlocAction {}

class StoriesEnd extends BlocAction {}
