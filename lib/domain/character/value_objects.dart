import 'package:dartz/dartz.dart';
import 'package:shattered_star/domain/core/failures.dart';
import 'package:shattered_star/domain/core/value_objects.dart';
import 'package:shattered_star/domain/core/value_validators.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory Name(String input) {
    assert(input != null);
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
    assert(input != null);
    return Race._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
    );
  }

  const Race._(this.value);
}

class FavoredClass extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 10;

  factory FavoredClass(String input) {
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
    return Age._(
      validateIsNumber(input),
    );
  }

  const Age._(this.value);
}

class HeightFeet extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory HeightFeet(String input) {
    assert(input != null);
    return HeightFeet._(
      validateIsNumber(input),
    );
  }

  const HeightFeet._(this.value);
}

class HeightInches extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory HeightInches(String input) {
    assert(input != null);
    return HeightInches._(
      validateIsNumber(input),
    );
  }

  const HeightInches._(this.value);
}

class Weight extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Weight(String input) {
    assert(input != null);
    return Weight._(
      validateIsNumber(input),
    );
  }

  const Weight._(this.value);
}

class Home extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 15;

  factory Home(String input) {
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
    return Deity._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty).flatMap(validateSingleLine),
        );
  }

  const Deity._(this.value);
}

class Languages extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

    static const maxLength = 25;

  factory Languages(String input) {
    assert(input != null);

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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
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
    assert(input != null);
    return Description._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const Description._(this.value);
}
