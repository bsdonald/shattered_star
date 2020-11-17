import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shattered_star/domain/character/i_character_repository.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/character_failure.dart';

part 'character_actor_event.dart';
part 'character_actor_state.dart';
part 'character_actor_bloc.freezed.dart';

@injectable
class CharacterActorBloc extends Bloc<CharacterActorEvent, CharacterActorState> {
  final ICharacterRepository _characterRepository;
  
  
  CharacterActorBloc(this._characterRepository) : super(const CharacterActorState.initial());

  @override
  Stream<CharacterActorState> mapEventToState(
    CharacterActorEvent event,
  ) async* {
    yield const CharacterActorState.actionInProgress();
    final possibleFailure = await _characterRepository.delete(event.character);
    yield possibleFailure.fold(
      (f) => CharacterActorState.deleteFailure(f),
      (_) => const CharacterActorState.deleteSuccess(),
    );
  }
}
