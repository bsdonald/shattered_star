part of 'character_watcher_bloc.dart';

@freezed
abstract class CharacterWatcherEvent with _$CharacterWatcherEvent {
  const factory CharacterWatcherEvent.watchAllStarted() = _WatchAllStarted;
  // const factory CharacterWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStarted;
  const factory CharacterWatcherEvent.charactersReceived(Either<CharacterFailure, KtList<Character>> failureOrCharacters) = _CharactersReceived;

}