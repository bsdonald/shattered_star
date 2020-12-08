import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shattered_star/domain/core/failures.dart';
import 'package:shattered_star/domain/core/value_objects.dart';
import 'package:shattered_star/domain/character/value_objects.dart';

part 'character.freezed.dart';

@freezed
abstract class Character implements _$Character {
  const Character._();

  const factory Character({
    @required UniqueId id,
    @required Name name,
    @required Race race,
    @required FavoredClass favoredClass,
    @required Level level,
    @required Gender gender,
    @required Age age,
    @required Height height,
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
    @required ImagePath imagePath,
  }) = _Character;

  factory Character.empty() => Character(
        id: UniqueId(),
        name: Name(''),
        race: Race(''),
        favoredClass: FavoredClass(''),
        level: Level(''),
        gender: Gender(''),
        age: Age(''),
        height: Height(''),
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
        imagePath: ImagePath(''),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(race.failureOrUnit)
        .andThen(favoredClass.failureOrUnit)
        .andThen(level.failureOrUnit)
        .andThen(gender.failureOrUnit)
        .andThen(age.failureOrUnit)
        .andThen(height.failureOrUnit)
        .andThen(weight.failureOrUnit)
        .andThen(home.failureOrUnit)
        .andThen(alignment.failureOrUnit)
        .andThen(deity.failureOrUnit)
        .andThen(languages.failureOrUnit)
        .andThen(strength.failureOrUnit)
        .andThen(dexterity.failureOrUnit)
        .andThen(constitution.failureOrUnit)
        .andThen(intelligence.failureOrUnit)
        .andThen(wisdom.failureOrUnit)
        .andThen(charisma.failureOrUnit)
        .andThen(maxHP.failureOrUnit)
        .andThen(armorClass.failureOrUnit)
        .andThen(combatManeuverDefense.failureOrUnit)
        .andThen(meleeMod.failureOrUnit)
        .andThen(rangedMod.failureOrUnit)
        .andThen(combatManeuverBonus.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(imagePath.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
