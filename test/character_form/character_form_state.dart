part of 'character_form_bloc.dart';

@freezed
abstract class CharacterFormState with _$CharacterFormState {
  const factory CharacterFormState({
    required Character character,
    required Image characterImage,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required bool imageLoading,
    required Option<Either<CharacterFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CharacterFormState;

  factory CharacterFormState.initial() => CharacterFormState(
    character: Character.empty(),
    characterImage: null,
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    imageLoading: false,
    saveFailureOrSuccessOption: none(),
  );
}
