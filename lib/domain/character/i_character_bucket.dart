import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/character_failure.dart';


abstract class ICharacterBucket {
  Future<Either<CharacterFailure, Unit>> upload(Character character);
  Future<Either<CharacterFailure, Unit>> delete(Character character);
}