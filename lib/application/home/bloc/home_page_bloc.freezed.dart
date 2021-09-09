// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomePageEventTearOff {
  const _$HomePageEventTearOff();

  CardPressed cardPressed() {
    return const CardPressed();
  }

  CardReleased cardReleased() {
    return const CardReleased();
  }
}

/// @nodoc
const $HomePageEvent = _$HomePageEventTearOff();

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cardPressed,
    required TResult Function() cardReleased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cardPressed,
    TResult Function()? cardReleased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardPressed value) cardPressed,
    required TResult Function(CardReleased value) cardReleased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardPressed value)? cardPressed,
    TResult Function(CardReleased value)? cardReleased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  final HomePageEvent _value;
  // ignore: unused_field
  final $Res Function(HomePageEvent) _then;
}

/// @nodoc
abstract class $CardPressedCopyWith<$Res> {
  factory $CardPressedCopyWith(
          CardPressed value, $Res Function(CardPressed) then) =
      _$CardPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardPressedCopyWithImpl<$Res> extends _$HomePageEventCopyWithImpl<$Res>
    implements $CardPressedCopyWith<$Res> {
  _$CardPressedCopyWithImpl(
      CardPressed _value, $Res Function(CardPressed) _then)
      : super(_value, (v) => _then(v as CardPressed));

  @override
  CardPressed get _value => super._value as CardPressed;
}

/// @nodoc

class _$CardPressed implements CardPressed {
  const _$CardPressed();

  @override
  String toString() {
    return 'HomePageEvent.cardPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CardPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cardPressed,
    required TResult Function() cardReleased,
  }) {
    return cardPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cardPressed,
    TResult Function()? cardReleased,
    required TResult orElse(),
  }) {
    if (cardPressed != null) {
      return cardPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardPressed value) cardPressed,
    required TResult Function(CardReleased value) cardReleased,
  }) {
    return cardPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardPressed value)? cardPressed,
    TResult Function(CardReleased value)? cardReleased,
    required TResult orElse(),
  }) {
    if (cardPressed != null) {
      return cardPressed(this);
    }
    return orElse();
  }
}

abstract class CardPressed implements HomePageEvent {
  const factory CardPressed() = _$CardPressed;
}

/// @nodoc
abstract class $CardReleasedCopyWith<$Res> {
  factory $CardReleasedCopyWith(
          CardReleased value, $Res Function(CardReleased) then) =
      _$CardReleasedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardReleasedCopyWithImpl<$Res> extends _$HomePageEventCopyWithImpl<$Res>
    implements $CardReleasedCopyWith<$Res> {
  _$CardReleasedCopyWithImpl(
      CardReleased _value, $Res Function(CardReleased) _then)
      : super(_value, (v) => _then(v as CardReleased));

  @override
  CardReleased get _value => super._value as CardReleased;
}

/// @nodoc

class _$CardReleased implements CardReleased {
  const _$CardReleased();

  @override
  String toString() {
    return 'HomePageEvent.cardReleased()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CardReleased);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cardPressed,
    required TResult Function() cardReleased,
  }) {
    return cardReleased();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cardPressed,
    TResult Function()? cardReleased,
    required TResult orElse(),
  }) {
    if (cardReleased != null) {
      return cardReleased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardPressed value) cardPressed,
    required TResult Function(CardReleased value) cardReleased,
  }) {
    return cardReleased(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardPressed value)? cardPressed,
    TResult Function(CardReleased value)? cardReleased,
    required TResult orElse(),
  }) {
    if (cardReleased != null) {
      return cardReleased(this);
    }
    return orElse();
  }
}

abstract class CardReleased implements HomePageEvent {
  const factory CardReleased() = _$CardReleased;
}

/// @nodoc
class _$HomePageStateTearOff {
  const _$HomePageStateTearOff();

  HomePageInitial initial() {
    return const HomePageInitial();
  }

  HomePageCardPressed cardPressed() {
    return const HomePageCardPressed();
  }

  HomePageCardReleased cardReleased() {
    return const HomePageCardReleased();
  }
}

/// @nodoc
const $HomePageState = _$HomePageStateTearOff();

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cardPressed,
    required TResult Function() cardReleased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cardPressed,
    TResult Function()? cardReleased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageInitial value) initial,
    required TResult Function(HomePageCardPressed value) cardPressed,
    required TResult Function(HomePageCardReleased value) cardReleased,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageInitial value)? initial,
    TResult Function(HomePageCardPressed value)? cardPressed,
    TResult Function(HomePageCardReleased value)? cardReleased,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;
}

/// @nodoc
abstract class $HomePageInitialCopyWith<$Res> {
  factory $HomePageInitialCopyWith(
          HomePageInitial value, $Res Function(HomePageInitial) then) =
      _$HomePageInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageInitialCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageInitialCopyWith<$Res> {
  _$HomePageInitialCopyWithImpl(
      HomePageInitial _value, $Res Function(HomePageInitial) _then)
      : super(_value, (v) => _then(v as HomePageInitial));

  @override
  HomePageInitial get _value => super._value as HomePageInitial;
}

/// @nodoc

class _$HomePageInitial implements HomePageInitial {
  const _$HomePageInitial();

  @override
  String toString() {
    return 'HomePageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomePageInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cardPressed,
    required TResult Function() cardReleased,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cardPressed,
    TResult Function()? cardReleased,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageInitial value) initial,
    required TResult Function(HomePageCardPressed value) cardPressed,
    required TResult Function(HomePageCardReleased value) cardReleased,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageInitial value)? initial,
    TResult Function(HomePageCardPressed value)? cardPressed,
    TResult Function(HomePageCardReleased value)? cardReleased,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomePageInitial implements HomePageState {
  const factory HomePageInitial() = _$HomePageInitial;
}

/// @nodoc
abstract class $HomePageCardPressedCopyWith<$Res> {
  factory $HomePageCardPressedCopyWith(
          HomePageCardPressed value, $Res Function(HomePageCardPressed) then) =
      _$HomePageCardPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageCardPressedCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageCardPressedCopyWith<$Res> {
  _$HomePageCardPressedCopyWithImpl(
      HomePageCardPressed _value, $Res Function(HomePageCardPressed) _then)
      : super(_value, (v) => _then(v as HomePageCardPressed));

  @override
  HomePageCardPressed get _value => super._value as HomePageCardPressed;
}

/// @nodoc

class _$HomePageCardPressed implements HomePageCardPressed {
  const _$HomePageCardPressed();

  @override
  String toString() {
    return 'HomePageState.cardPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomePageCardPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cardPressed,
    required TResult Function() cardReleased,
  }) {
    return cardPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cardPressed,
    TResult Function()? cardReleased,
    required TResult orElse(),
  }) {
    if (cardPressed != null) {
      return cardPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageInitial value) initial,
    required TResult Function(HomePageCardPressed value) cardPressed,
    required TResult Function(HomePageCardReleased value) cardReleased,
  }) {
    return cardPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageInitial value)? initial,
    TResult Function(HomePageCardPressed value)? cardPressed,
    TResult Function(HomePageCardReleased value)? cardReleased,
    required TResult orElse(),
  }) {
    if (cardPressed != null) {
      return cardPressed(this);
    }
    return orElse();
  }
}

abstract class HomePageCardPressed implements HomePageState {
  const factory HomePageCardPressed() = _$HomePageCardPressed;
}

/// @nodoc
abstract class $HomePageCardReleasedCopyWith<$Res> {
  factory $HomePageCardReleasedCopyWith(HomePageCardReleased value,
          $Res Function(HomePageCardReleased) then) =
      _$HomePageCardReleasedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageCardReleasedCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageCardReleasedCopyWith<$Res> {
  _$HomePageCardReleasedCopyWithImpl(
      HomePageCardReleased _value, $Res Function(HomePageCardReleased) _then)
      : super(_value, (v) => _then(v as HomePageCardReleased));

  @override
  HomePageCardReleased get _value => super._value as HomePageCardReleased;
}

/// @nodoc

class _$HomePageCardReleased implements HomePageCardReleased {
  const _$HomePageCardReleased();

  @override
  String toString() {
    return 'HomePageState.cardReleased()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomePageCardReleased);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cardPressed,
    required TResult Function() cardReleased,
  }) {
    return cardReleased();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cardPressed,
    TResult Function()? cardReleased,
    required TResult orElse(),
  }) {
    if (cardReleased != null) {
      return cardReleased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageInitial value) initial,
    required TResult Function(HomePageCardPressed value) cardPressed,
    required TResult Function(HomePageCardReleased value) cardReleased,
  }) {
    return cardReleased(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageInitial value)? initial,
    TResult Function(HomePageCardPressed value)? cardPressed,
    TResult Function(HomePageCardReleased value)? cardReleased,
    required TResult orElse(),
  }) {
    if (cardReleased != null) {
      return cardReleased(this);
    }
    return orElse();
  }
}

abstract class HomePageCardReleased implements HomePageState {
  const factory HomePageCardReleased() = _$HomePageCardReleased;
}
