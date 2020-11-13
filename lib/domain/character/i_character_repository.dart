import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/character_failure.dart';


abstract class ICharacterRepository {
  //CUD

  //CRUD

  // watch characters
  Stream<Either<CharacterFailure, KtList<Character>>> watchAll();
  //watch uncompleted characters
  Future<Either<CharacterFailure, Unit>> create(Character character);
  Future<Either<CharacterFailure, Unit>>update(Character character);
  Future<Either<CharacterFailure, Unit>> delete(Character character);
}
