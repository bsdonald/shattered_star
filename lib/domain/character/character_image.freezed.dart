// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'character_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CharacterImageTearOff {
  const _$CharacterImageTearOff();

  _CharacterImage call({@required UniqueId userId, @required Image image}) {
    return _CharacterImage(
      userId: userId,
      image: image,
    );
  }
}

// ignore: unused_element
const $CharacterImage = _$CharacterImageTearOff();

mixin _$CharacterImage {
  UniqueId get userId;
  Image get image;

  $CharacterImageCopyWith<CharacterImage> get copyWith;
}

abstract class $CharacterImageCopyWith<$Res> {
  factory $CharacterImageCopyWith(
          CharacterImage value, $Res Function(CharacterImage) then) =
      _$CharacterImageCopyWithImpl<$Res>;
  $Res call({UniqueId userId, Image image});
}

class _$CharacterImageCopyWithImpl<$Res>
    implements $CharacterImageCopyWith<$Res> {
  _$CharacterImageCopyWithImpl(this._value, this._then);

  final CharacterImage _value;
  // ignore: unused_field
  final $Res Function(CharacterImage) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object image = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      image: image == freezed ? _value.image : image as Image,
    ));
  }
}

abstract class _$CharacterImageCopyWith<$Res>
    implements $CharacterImageCopyWith<$Res> {
  factory _$CharacterImageCopyWith(
          _CharacterImage value, $Res Function(_CharacterImage) then) =
      __$CharacterImageCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId userId, Image image});
}

class __$CharacterImageCopyWithImpl<$Res>
    extends _$CharacterImageCopyWithImpl<$Res>
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
      userId: userId == freezed ? _value.userId : userId as UniqueId,
      image: image == freezed ? _value.image : image as Image,
    ));
  }
}

class _$_CharacterImage extends _CharacterImage {
  const _$_CharacterImage({@required this.userId, @required this.image})
      : assert(userId != null),
        assert(image != null),
        super._();

  @override
  final UniqueId userId;
  @override
  final Image image;

  @override
  String toString() {
    return 'CharacterImage(userId: $userId, image: $image)';
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
}

abstract class _CharacterImage extends CharacterImage {
  const _CharacterImage._() : super._();
  const factory _CharacterImage(
      {@required UniqueId userId, @required Image image}) = _$_CharacterImage;

  @override
  UniqueId get userId;
  @override
  Image get image;
  @override
  _$CharacterImageCopyWith<_CharacterImage> get copyWith;
}
