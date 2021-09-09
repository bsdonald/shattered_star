import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shattered_star/domain/core/failures.dart';
import 'package:shattered_star/domain/core/value_objects.dart';
import 'package:shattered_star/domain/core/value_transformers.dart';
import 'package:shattered_star/domain/core/value_validators.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory Name(String input) {
    return Name._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Name._(this.value);
}

class Race extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 10;

  factory Race(String input) {
    return Race._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Race._(this.value);
}

class FavoredClass extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  factory FavoredClass(String input) {
    return FavoredClass._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const FavoredClass._(this.value);
}

class Level extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Level(String input) {
    return Level._(
      validateIsNumber(input),
    );
  }

  const Level._(this.value);
}

class Gender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 10;

  factory Gender(String input) {
    return Gender._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Gender._(this.value);
}

class Age extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Age(String input) {
    return Age._(
      validateIsNumber(input),
    );
  }

  const Age._(this.value);
}

class Height extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 8;

  factory Height(String input) {
    return Height._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Height._(this.value);
}

class Weight extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 10;

  factory Weight(String input) {
    return Weight._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Weight._(this.value);
}

class Home extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 15;

  factory Home(String input) {
    return Home._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Home._(this.value);
}

class Alignment extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 15;

  factory Alignment(String input) {
    return Alignment._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Alignment._(this.value);
}

class Deity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 15;

  factory Deity(String input) {
    return Deity._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Deity._(this.value);
}

class Languages extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory Languages(String input) {

    return Languages._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Languages._(this.value);
}

class Strength extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Strength(String input) {
    return Strength._(
      validateStatNumber(input),
    );
  }

  const Strength._(this.value);
}

class Dexterity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Dexterity(String input) {
    return Dexterity._(
      validateStatNumber(input),
    );
  }

  const Dexterity._(this.value);
}

class Constitution extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Constitution(String input) {
    return Constitution._(
      validateStatNumber(input),
    );
  }

  const Constitution._(this.value);
}

class Intelligence extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Intelligence(String input) {
    return Intelligence._(
      validateStatNumber(input),
    );
  }

  const Intelligence._(this.value);
}

class Wisdom extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Wisdom(String input) {
    return Wisdom._(
      validateStatNumber(input),
    );
  }

  const Wisdom._(this.value);
}

class Charisma extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Charisma(String input) {
    return Charisma._(
      validateStatNumber(input),
    );
  }

  const Charisma._(this.value);
}

class MaxHP extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MaxHP(String input) {
    return MaxHP._(
      validateIsNumber(input),
    );
  }

  const MaxHP._(this.value);
}

class ArmorClass extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ArmorClass(String input) {
    return ArmorClass._(
      validateIsNumber(input),
    );
  }

  const ArmorClass._(this.value);
}

class CombatManeuverDefense extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CombatManeuverDefense(String input) {
    return CombatManeuverDefense._(
      validateIsNumber(input),
    );
  }

  const CombatManeuverDefense._(this.value);
}

class MeleeMod extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MeleeMod(String input) {
    return MeleeMod._(
      validateIsNumber(input),
    );
  }

  const MeleeMod._(this.value);
}

class RangedMod extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RangedMod(String input) {
    return RangedMod._(
      validateIsNumber(input),
    );
  }

  const RangedMod._(this.value);
}

class CombatManeuverBonus extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CombatManeuverBonus(String input) {
    return CombatManeuverBonus._(
      validateIsNumber(input),
    );
  }

  const CombatManeuverBonus._(this.value);
}

class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory Description(String input) {
    return Description._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const Description._(this.value);
}

class ImagePath extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ImagePath(String input) {
    return ImagePath._(
      validateStringNotEmpty(input),
    );
  }

  const ImagePath._(this.value);
}

class PrimaryGradientColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;

  factory PrimaryGradientColor(Color input) {
    return PrimaryGradientColor._(
      right(makeColorOpaque(input)),
    );
  }

  const PrimaryGradientColor._(this.value);
}

class SecondaryGradientColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;

  factory SecondaryGradientColor(Color input) {
    return SecondaryGradientColor._(
      right(makeColorOpaque(input)),
    );
  }

  const SecondaryGradientColor._(this.value);
}

class TertiaryGradientColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;

  factory TertiaryGradientColor(Color input) {
    return TertiaryGradientColor._(
      right(makeColorOpaque(input)),
    );
  }

  const TertiaryGradientColor._(this.value);
}

class PrimaryTextColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;

  factory PrimaryTextColor(Color input) {
    return PrimaryTextColor._(
      right(makeColorOpaque(input)),
    );
  }

  const PrimaryTextColor._(this.value);
}

class SecondaryTextColor extends ValueObject<Color> {
  @override
  final Either<ValueFailure<Color>, Color> value;

  factory SecondaryTextColor(Color input) {
    return SecondaryTextColor._(
      right(makeColorOpaque(input)),
    );
  }

  const SecondaryTextColor._(this.value);
}
