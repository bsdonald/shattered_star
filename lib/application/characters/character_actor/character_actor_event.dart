part of 'character_actor_bloc.dart';

@freezed
abstract class CharacterActorEvent with _$CharacterActorEvent {
  const factory CharacterActorEvent.deleted(Character character) = _Deleted;
}