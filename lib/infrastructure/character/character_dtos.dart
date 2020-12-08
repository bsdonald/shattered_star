import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart';
import 'package:shattered_star/domain/core/value_objects.dart';


part 'character_dtos.freezed.dart';

part 'character_dtos.g.dart';

@freezed
abstract class CharacterDto implements _$CharacterDto {
  const CharacterDto._();

  const factory CharacterDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String race,
    @required String favoredClass,
    @required String level,
    @required String gender,
    @required String age,
    @required String height,
    @required String weight,
    @required String home,
    @required String alignment,
    @required String deity,
    @required String languages,
    @required String strength,
    @required String dexterity,
    @required String constitution,
    @required String intelligence,
    @required String wisdom,
    @required String charisma,
    @required String maxHP,
    @required String armorClass,
    @required String combatManeuverDefense,
    @required String meleeMod,
    @required String rangedMod,
    @required String combatManeuverBonus,
    @required String description,
    @required String imagePath,
  }) = _Character;

  factory CharacterDto.fromDomain(Character character) {
    return CharacterDto(
      id: character.id.getOrCrash(),
      name: character.name.getOrCrash(),
      race: character.race.getOrCrash(),
      favoredClass: character.favoredClass.getOrCrash(),
      level: character.level.getOrCrash(),
      gender: character.gender.getOrCrash(),
      age: character.age.getOrCrash(),
      height: character.height.getOrCrash(),
      weight: character.weight.getOrCrash(),
      home: character.home.getOrCrash(),
      alignment: character.alignment.getOrCrash(),
      deity: character.deity.getOrCrash(),
      languages: character.languages.getOrCrash(),
      strength: character.strength.getOrCrash(),
      dexterity: character.dexterity.getOrCrash(),
      constitution: character.constitution.getOrCrash(),
      intelligence: character.intelligence.getOrCrash(),
      wisdom: character.wisdom.getOrCrash(),
      charisma: character.charisma.getOrCrash(),
      maxHP: character.maxHP.getOrCrash(),
      armorClass: character.armorClass.getOrCrash(),
      combatManeuverDefense: character.combatManeuverDefense.getOrCrash(),
      meleeMod: character.meleeMod.getOrCrash(),
      rangedMod: character.rangedMod.getOrCrash(),
      combatManeuverBonus: character.combatManeuverBonus.getOrCrash(),
      description: character.description.getOrCrash(),
      imagePath: character.imagePath.getOrCrash(),
    );
  }

 Character toDomain() {
   return Character(
     id: UniqueId.fromUniqueString(id),
      name: Name(name),
      race: Race(race),
      favoredClass: FavoredClass(favoredClass),
      level: Level(level),
      gender: Gender(gender),
      age: Age(age),
      height: Height(height),
      weight: Weight(weight),
      home: Home(home),
      alignment: Alignment(alignment),
      deity: Deity(deity),
      languages: Languages(languages),
      strength: Strength(strength),
      dexterity: Dexterity(dexterity),
      constitution: Constitution(constitution),
      intelligence: Intelligence(intelligence),
      wisdom: Wisdom(wisdom),
      charisma: Charisma(charisma),
      maxHP: MaxHP(maxHP),
      armorClass: ArmorClass(armorClass),
      combatManeuverDefense: CombatManeuverDefense(combatManeuverDefense),
      meleeMod: MeleeMod(meleeMod),
      rangedMod: RangedMod(rangedMod),
      combatManeuverBonus: CombatManeuverBonus(combatManeuverBonus),
      description:Description(description),
      imagePath: ImagePath(imagePath),
   );
 }

  factory CharacterDto.fromJson(Map<String, dynamic> json) => _$CharacterDtoFromJson(json);

  factory CharacterDto.fromFirestore(DocumentSnapshot doc) {
    return CharacterDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

