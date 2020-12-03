import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shattered_star/domain/character/value_objects.dart';
import 'package:shattered_star/domain/core/failures.dart';
import 'package:shattered_star/domain/core/value_objects.dart';

part 'character_image.freezed.dart';

@freezed
abstract class CharacterImage implements _$CharacterImage {
  const CharacterImage._();

  const factory CharacterImage({
    @required UniqueId userId,
    @required Image image,
  }) = _CharacterImage;

  factory CharacterImage.empty() => CharacterImage(
    userId: UniqueId(),
    image: Image(null),
  );
  Option<ValueFailure<dynamic>> get failureOption {
    return image.failureOrUnit.fold((f) => some(f), (r) => none());
  }
}