import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:shattered_star/domain/character/character_failure.dart';
import 'package:shattered_star/domain/character/i_character_bucket.dart';
import 'package:shattered_star/infrastructure/core/storage_helpers.dart';

@LazySingleton(as: ICharacterBucket)
class CharacterBucket implements ICharacterBucket {
  final FirebaseStorage _storage;
  final _picker = ImagePicker();
  // String imagePath;

  CharacterBucket(this._storage);

  @override
  Future<File> getImage() async {
    var pickedImage = await _picker.getImage(source: ImageSource.gallery);
    return File(pickedImage.path);
  }

  @override
  Future<Either<CharacterFailure, Unit>> upload(String characterId) async {
    try {
      var pickedImage = await _picker.getImage(source: ImageSource.gallery);
      var file = File(pickedImage.path);
      String downloadURL;

      final userBucket = await _storage.userDirectory();

      var _reference = userBucket.child('player_characters/$characterId');

      UploadTask task = _reference.putFile(file);

      await task.snapshotEvents.listen((TaskSnapshot snapshot) {
        print('Snapshot state: ${snapshot.state}'); // paused, running, complete
        print('Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
      }, onError: (Object e) {
        print(e); // FirebaseException
      });

      await task.then((TaskSnapshot snapshot) {
        print('Upload complete!');
        // downloadURL = await _reference.getDownloadURL();
      }).catchError((Object e) {
        print(e); // FirebaseException
      });

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
  Future<String> getDownloadUrl(String characterId) async {
    final userBucket = await _storage.userDirectory();

    var _reference = userBucket.child('player_characters/$characterId');

    String downloadUrl = await _reference.getDownloadURL();

    return downloadUrl;
  }

  @override
  Future<Either<CharacterFailure, Unit>> delete(String characterId) async {
    try {
      final userBucket = await _storage.userDirectory();

      await userBucket.child('player_characters/$characterId').delete();

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
