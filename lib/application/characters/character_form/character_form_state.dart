part of 'character_form_bloc.dart';

@freezed
abstract class CharacterFormState with _$CharacterFormState {
  const factory CharacterFormState({
    required bool showErrorMessages,
    required Character character,
    required bool isEditing,
    required bool isSaving,
    required bool imageLoading,
    required Option<Either<CharacterFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CharacterFormState;

  factory CharacterFormState.initial() => CharacterFormState(
    character: Character.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    imageLoading: false,
    saveFailureOrSuccessOption: none(),
  );
}
