part of 'stories_bloc.dart';

@freezed
class StoriesEvent with _$StoriesEvent {
  factory StoriesEvent.init() = Init;
  factory StoriesEvent.storyCompleted() = StoryCompleted;
  factory StoriesEvent.onCloseClicked() = OnCloseClicked;
  factory StoriesEvent.onLongPressed() = OnLongPressed;
  factory StoriesEvent.onLongPressCanceled() = OnLongPressCanceled;
  factory StoriesEvent.onPreviousPressed() = OnPreviousPressed;
  factory StoriesEvent.onNextPressed() = OnNextPressed;
  factory StoriesEvent.onButtonClicked() = OnButtonClicked;
  factory StoriesEvent.videoInitializing() = VideoInitializing;
}
