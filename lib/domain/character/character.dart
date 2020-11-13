import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shattered_star/domain/core/value_objects.dart';
import 'package:shattered_star/domain/character/value_objects.dart';

part 'character.freezed.dart';

@freezed
abstract class Character implements _$Character {
  const Character._();

  const factory Character({
    @required UniqueId userId,
    @required Name name,
    @required Race race,
    @required FavoredClass favoredClass,
    @required Level level,
    @required Gender gender,
    @required Age age,
    @required HeightFeet heightFeet,
    @required HeightInches heightInches,
    @required Weight weight,
    @required Home home,
    @required Alignment alignment,
    @required Deity deity,
    @required Languages languages,
    @required Strength strength,
    @required Dexterity dexterity,
    @required Constitution constitution,
    @required Intelligence intelligence,
    @required Wisdom wisdom,
    @required Charisma charisma,
    @required MaxHP maxHP,
    @required ArmorClass armorClass,
    @required CombatManeuverDefense combatManeuverDefense,
    @required MeleeMod meleeMod,
    @required RangedMod rangedMod,
    @required CombatManeuverBonus combatManeuverBonus,
    @required Description description,
  }) = _Character;

  factory Character.empty() => Character(
        userId: UniqueId(),
        name: Name(''),
        race: Race(''),
        favoredClass: FavoredClass(''),
        level: Level(''),
        gender: Gender(''),
        age: Age(''),
        heightFeet: HeightFeet(''),
        heightInches: HeightInches(''),
        weight: Weight(''),
        home: Home(''),
        alignment: Alignment(''),
        deity: Deity(''),
        languages: Languages(''),
        strength: Strength(''),
        dexterity: Dexterity(''),
        constitution: Constitution(''),
        intelligence: Intelligence(''),
        wisdom: Wisdom(''),
        charisma: Charisma(''),
        maxHP: MaxHP(''),
        armorClass: ArmorClass(''),
        combatManeuverDefense: CombatManeuverDefense(''),
        meleeMod: MeleeMod(''),
        rangedMod: RangedMod(''),
        combatManeuverBonus: CombatManeuverBonus(''),
        description: Description(''),
      );
}
