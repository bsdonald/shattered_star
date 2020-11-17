import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shattered_star/domain/character/i_character_repository.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/character_failure.dart';

part 'character_watcher_event.dart';
part 'character_watcher_state.dart';
part 'character_watcher_bloc.freezed.dart';

@injectable
class CharacterWatcherBloc extends Bloc<CharacterWatcherEvent, CharacterWatcherState> {
  final ICharacterRepository _characterRepository;

  CharacterWatcherBloc(this._characterRepository) : super(const CharacterWatcherState.initial());

  StreamSubscription<Either<CharacterFailure, KtList<Character>>> _characterStreamSubscription;

  @override
  Stream<CharacterWatcherState> mapEventToState(
    CharacterWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CharacterWatcherState.loadInProgress();
        await _characterStreamSubscription?.cancel();
       _characterStreamSubscription = _characterRepository.watchAll().listen(
              (failureOrCharacters) => add(CharacterWatcherEvent.charactersReceived(failureOrCharacters)),
            );
      },
      // watchUncompletedStarted: (e) async* {
      //   yield const CharacterWatcherState.loadInProgress();
      //   await _characterStreamSubscription?.cancel();
      //  _characterStreamSubscription = _characterRepository.watchUncompleted().listen(
      //         (failureOrCharacters) => add(CharacterWatcherEvent.charactersReceived(failureOrCharacters)),
      //       );
      // },
      charactersReceived: (e) async* {
        yield e.failureOrCharacters.fold(
          (f) => CharacterWatcherState.loadFailure(f),
          (characters) => CharacterWatcherState.loadSuccess(characters),
        );
      },
    );
  }

  @override
  Future<void> close() async {
await _characterStreamSubscription?.cancel();
    return super.close();
  }
}
