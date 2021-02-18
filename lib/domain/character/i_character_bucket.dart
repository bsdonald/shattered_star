import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:shattered_star/domain/character/character_failure.dart';


abstract class ICharacterBucket {
  Future<File> getImage();
  Future<Either<CharacterFailure, Unit>> upload(String characterId, File file);
  Future<Either<CharacterFailure, Unit>> delete(String characterId);
  Future<String> getDownloadUrl(String characterId);
}