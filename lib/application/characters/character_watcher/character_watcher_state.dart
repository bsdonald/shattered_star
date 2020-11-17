part of 'character_watcher_bloc.dart';

@freezed
abstract class CharacterWatcherState with _$CharacterWatcherState {
  const factory CharacterWatcherState.initial() = _Initial;
  const factory CharacterWatcherState.loadInProgress() = _LoadInProgress;
  const factory CharacterWatcherState.loadSuccess(KtList<Character> characters) = _LoadSuccess;
  const factory CharacterWatcherState.loadFailure(CharacterFailure characterFailure) = _LoadFailure;
}
