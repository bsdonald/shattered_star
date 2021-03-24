part of 'character_form_bloc.dart';

@freezed
abstract class CharacterFormEvent with _$CharacterFormEvent {
  const factory CharacterFormEvent.initialized(Option<Character> initialCharacterOption) = _Initialized;
  const factory CharacterFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory CharacterFormEvent.raceChanged(String raceStr) = _RaceChanged;
  const factory CharacterFormEvent.favoredClassChanged(String favoredClassStr) = _FavoredClassChanged;
  const factory CharacterFormEvent.levelChanged(String levelStr) = _LevelChanged;
  const factory CharacterFormEvent.genderChanged(String genderStr) = _GenderChanged;
  const factory CharacterFormEvent.ageChanged(String ageStr) = _AgeChanged;
  const factory CharacterFormEvent.heightChanged(String heightStr) = _HeightChanged;
  const factory CharacterFormEvent.weightChanged(String weightStr) = _WeightChanged;
  const factory CharacterFormEvent.homeChanged(String homeStr) = _HomeChanged;
  const factory CharacterFormEvent.alignmentChanged(String alignmentStr) = _AlignmentChanged;
  const factory CharacterFormEvent.deityChanged(String deityStr) = _DeityChanged;
  const factory CharacterFormEvent.languagesChanged(String languagesStr) = _LanguagesChanged;
  const factory CharacterFormEvent.strengthChanged(String strengthStr) = _StrengthChanged;
  const factory CharacterFormEvent.dexterityChanged(String dexterityStr) = _DexterityChanged;
  const factory CharacterFormEvent.constitutionChanged(String constitutionStr) = _ConstitutionChanged;
  const factory CharacterFormEvent.intelligenceChanged(String intelligenceStr) = _IntelligenceChanged;
  const factory CharacterFormEvent.wisdomChanged(String wisdomStr) = _WisdomChanged;
  const factory CharacterFormEvent.charismaChanged(String charismaStr) = _CharismaChanged;
  const factory CharacterFormEvent.maxHPChanged(String maxHPStr) = _MaxHPChanged;
  const factory CharacterFormEvent.armorClassChanged(String armorClassStr) = _ArmorClassChanged;
  const factory CharacterFormEvent.combatManeuverDefenseChanged(String combatManeuverDefenseStr) = _CombatManeuverDefenseChanged;
  const factory CharacterFormEvent.meleeModChanged(String meleeModStr) = _MeleeModChanged;
  const factory CharacterFormEvent.rangedModChanged(String rangedModStr) = _rangedModChanged;
  const factory CharacterFormEvent.combatManeuverBonusChanged(String combatManeuverBonusStr) = _CombatManeuverBonusChanged;
  const factory CharacterFormEvent.descriptionChanged(String descriptionStr) = _DescriptionChanged;
  const factory CharacterFormEvent.saved() = _Saved;
  const factory CharacterFormEvent.imageButtonPressed() = _ImageButtonPressed;
  const factory CharacterFormEvent.fileButtonPressed() = _FileButtonPressed;

}