import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shattered_star/domain/character/character_image.dart';
import 'package:shattered_star/domain/character/value_objects.dart';
import 'package:shattered_star/domain/core/value_objects.dart';

part 'character_image_dtos.freezed.dart';

part 'character_image_dtos.g.dart';

@freezed
abstract class CharacterImageDto implements _$CharacterImageDto {
  const CharacterImageDto._();

  const factory CharacterImageDto({
    @JsonKey(ignore: true) String userId,
    @required File image,
  }) = _CharacterImage;

  factory CharacterImageDto.fromDomain(CharacterImage characterImage) {
    return CharacterImageDto(
      userId: characterImage.userId.getOrCrash(),
      image: characterImage.image.getOrCrash(),
    );
  }

  CharacterImage toDomain() {
    return CharacterImage(
      userId: UniqueId.fromUniqueString(userId),
      image: Image(image),
    );
  }

  factory CharacterImageDto.fromJson(Map<String, dynamic> json) => _$CharacterImageDtoFromJson(json);

  factory CharacterImageDto.fromStorage(StorageSnapshot image) {
    return CharacterImageDto.fromJson(image.data()).copyWith(userId: image.id);
  }
}
