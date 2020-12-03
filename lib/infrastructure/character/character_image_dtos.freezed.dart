// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'character_image_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CharacterImageDto _$CharacterImageDtoFromJson(Map<String, dynamic> json) {
  return _CharacterImage.fromJson(json);
}

class _$CharacterImageDtoTearOff {
  const _$CharacterImageDtoTearOff();

  _CharacterImage call(
      {@JsonKey(ignore: true) String userId, @required File image}) {
    return _CharacterImage(
      userId: userId,
      image: image,
    );
  }
}

// ignore: unused_element
const $CharacterImageDto = _$CharacterImageDtoTearOff();

mixin _$CharacterImageDto {
  @JsonKey(ignore: true)
  String get userId;
  File get image;

  Map<String, dynamic> toJson();
  $CharacterImageDtoCopyWith<CharacterImageDto> get copyWith;
}

abstract class $CharacterImageDtoCopyWith<$Res> {
  factory $CharacterImageDtoCopyWith(
          CharacterImageDto value, $Res Function(CharacterImageDto) then) =
      _$CharacterImageDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String userId, File image});
}

class _$CharacterImageDtoCopyWithImpl<$Res>
    implements $CharacterImageDtoCopyWith<$Res> {
  _$CharacterImageDtoCopyWithImpl(this._value, this._then);

  final CharacterImageDto _value;
  // ignore: unused_field
  final $Res Function(CharacterImageDto) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

abstract class _$CharacterImageCopyWith<$Res>
    implements $CharacterImageDtoCopyWith<$Res> {
  factory _$CharacterImageCopyWith(
          _CharacterImage value, $Res Function(_CharacterImage) then) =
      __$CharacterImageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String userId, File image});
}

class __$CharacterImageCopyWithImpl<$Res>
    extends _$CharacterImageDtoCopyWithImpl<$Res>
    implements _$CharacterImageCopyWith<$Res> {
  __$CharacterImageCopyWithImpl(
      _CharacterImage _value, $Res Function(_CharacterImage) _then)
      : super(_value, (v) => _then(v as _CharacterImage));

  @override
  _CharacterImage get _value => super._value as _CharacterImage;

  @override
  $Res call({
    Object userId = freezed,
    Object image = freezed,
  }) {
    return _then(_CharacterImage(
      userId: userId == freezed ? _value.userId : userId as String,
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

@JsonSerializable()
class _$_CharacterImage extends _CharacterImage {
  const _$_CharacterImage(
      {@JsonKey(ignore: true) this.userId, @required this.image})
      : assert(image != null),
        super._();

  factory _$_CharacterImage.fromJson(Map<String, dynamic> json) =>
      _$_$_CharacterImageFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String userId;
  @override
  final File image;

  @override
  String toString() {
    return 'CharacterImageDto(userId: $userId, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharacterImage &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(image);

  @override
  _$CharacterImageCopyWith<_CharacterImage> get copyWith =>
      __$CharacterImageCopyWithImpl<_CharacterImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CharacterImageToJson(this);
  }
}

abstract class _CharacterImage extends CharacterImageDto {
  const _CharacterImage._() : super._();
  const factory _CharacterImage(
      {@JsonKey(ignore: true) String userId,
      @required File image}) = _$_CharacterImage;

  factory _CharacterImage.fromJson(Map<String, dynamic> json) =
      _$_CharacterImage.fromJson;

  @override
  @JsonKey(ignore: true)
  String get userId;
  @override
  File get image;
  @override
  _$CharacterImageCopyWith<_CharacterImage> get copyWith;
}
