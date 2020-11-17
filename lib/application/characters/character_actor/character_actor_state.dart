part of 'character_actor_bloc.dart';

@freezed
abstract class CharacterActorState with _$CharacterActorState {
  const factory CharacterActorState.initial() = _Initial;
  const factory CharacterActorState.actionInProgress() = _ActionInProgress;
  const factory CharacterActorState.deleteFailure(CharacterFailure characterFailure) = _DeleteFailure;
  const factory CharacterActorState.deleteSuccess() = _DeleteSucess;
}
