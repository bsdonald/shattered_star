import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shattered_star/domain/character/i_character_repository.dart';
import 'package:shattered_star/domain/character/character_failure.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/infrastructure/core/firestore_helpers.dart';
import 'package:shattered_star/infrastructure/character/character_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ICharacterRepository)
class CharacterRepository implements ICharacterRepository {
  final FirebaseFirestore _firestore;

  CharacterRepository(this._firestore);
  @override
  Stream<Either<CharacterFailure, KtList<Character>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.characterCollection
        .orderBy(
          'name',
          descending: true,
        )
        .snapshots()
        .map(
          (snapshot) => right<CharacterFailure, KtList<Character>>(
            snapshot.docs.map((doc) => CharacterDto.fromFirestore(doc).toDomain()).toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const CharacterFailure.insufficientPermission());
      } else {
        return left(const CharacterFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<CharacterFailure, Unit>> create(Character character) async {
    try {
      final userDoc = await _firestore.userDocument();
      final characterDto = CharacterDto.fromDomain(character);

      await userDoc.characterCollection.doc(characterDto.id).set(characterDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const CharacterFailure.insufficientPermission());
      } else {
        return left(const CharacterFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CharacterFailure, Unit>> update(Character character) async {
    try {
      final userDoc = await _firestore.userDocument();
      final characterDto = CharacterDto.fromDomain(character);

      await userDoc.characterCollection.doc(characterDto.id).update(characterDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const CharacterFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const CharacterFailure.unableToUpdate());
      } else {
        return left(const CharacterFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<CharacterFailure, Unit>> delete(Character character) async {
    try {
      final userDoc = await _firestore.userDocument();
      final characterId = character.id.getOrCrash();

      await userDoc.characterCollection.doc(characterId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const CharacterFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const CharacterFailure.unableToUpdate());
      } else {
        return left(const CharacterFailure.unexpected());
      }
    }
  }
}
