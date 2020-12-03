// // import 'dart:io';

// import 'package:dartz/dartz.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:injectable/injectable.dart';
// import 'package:shattered_star/domain/character/character.dart';
// import 'package:shattered_star/domain/character/character_failure.dart';
// import 'package:shattered_star/domain/character/i_character_bucket.dart';
// import 'package:shattered_star/infrastructure/character/character_dtos.dart';
// import 'package:shattered_star/infrastructure/core/storage_helpers.dart';

// @LazySingleton(as: ICharacterBucket)
// class CharacterBucket implements ICharacterBucket {
//   final FirebaseStorage _storage;

//   CharacterBucket(this._storage, this.file);
//   @override
//   Future<Either<CharacterFailure, Unit>> upload(Character character) async {
//     try {
//       final userBucket = await _storage.userDirectory();
//       final characterDto = CharacterDto.fromDomain(character);
//       final file;

//       await userBucket.child('characters/${characterDto.userId}').putFile(file);

//       return right(unit);
//     } on FirebaseException catch (e) {
//       if (e.message.contains('PERMISSION_DENIED')) {
//         return left(const CharacterFailure.insufficientPermission());
//       } else {
//         return left(const CharacterFailure.unexpected());
//       }
//     }
//   }

//   @override
//   Future<Either<CharacterFailure, Unit>> delete(Character character) async {
//     try {
//       final userBucket = await _storage.userDirectory();
//       final characterId = character.userId.getOrCrash();

//       await userBucket.child('characters/$characterId').delete();

//       return right(unit);
//     } on FirebaseException catch (e) {
//       if (e.message.contains('PERMISSION_DENIED')) {
//         return left(const CharacterFailure.insufficientPermission());
//       } else if (e.message.contains('NOT_FOUND')) {
//         return left(const CharacterFailure.unableToUpdate());
//       } else {
//         return left(const CharacterFailure.unexpected());
//       }
//     }
//   }
// }
