part of 'character_form_bloc.dart';

@freezed
abstract class CharacterFormState with _$CharacterFormState {
  const factory CharacterFormState({
    @required Character character,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required FormBlock formBlock,
    @required int counter,
    @required Option<Either<CharacterFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CharacterFormState;

  factory CharacterFormState.initial() => CharacterFormState(
    character: Character.empty(),
    showErrorMessages: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
    formBlock: FormBlock.Card,
    counter: 0,
  );
}
