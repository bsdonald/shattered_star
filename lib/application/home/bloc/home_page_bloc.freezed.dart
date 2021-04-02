// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomePageEventTearOff {
  const _$HomePageEventTearOff();

// ignore: unused_element
  CardPressed cardPressed() {
    return const CardPressed();
  }

// ignore: unused_element
  CardReleased cardReleased() {
    return const CardReleased();
  }
}

/// @nodoc
// ignore: unused_element
const $HomePageEvent = _$HomePageEventTearOff();

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cardPressed(),
    @required TResult cardReleased(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cardPressed(),
    TResult cardReleased(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cardPressed(CardPressed value),
    @required TResult cardReleased(CardReleased value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cardPressed(CardPressed value),
    TResult cardReleased(CardReleased value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult cardPressed(),
    @required TResult cardReleased(),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cardPressed(),
    TResult cardReleased(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cardPressed != null) {
      return cardPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cardPressed(CardPressed value),
    @required TResult cardReleased(CardReleased value),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cardPressed(CardPressed value),
    TResult cardReleased(CardReleased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult cardPressed(),
    @required TResult cardReleased(),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cardPressed(),
    TResult cardReleased(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cardReleased != null) {
      return cardReleased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cardPressed(CardPressed value),
    @required TResult cardReleased(CardReleased value),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cardPressed(CardPressed value),
    TResult cardReleased(CardReleased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

// ignore: unused_element
  HomePageInitial initial() {
    return const HomePageInitial();
  }

// ignore: unused_element
  HomePageCardPressed cardPressed() {
    return const HomePageCardPressed();
  }

// ignore: unused_element
  HomePageCardReleased cardReleased() {
    return const HomePageCardReleased();
  }
}

/// @nodoc
// ignore: unused_element
const $HomePageState = _$HomePageStateTearOff();

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult cardPressed(),
    @required TResult cardReleased(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult cardPressed(),
    TResult cardReleased(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(HomePageInitial value),
    @required TResult cardPressed(HomePageCardPressed value),
    @required TResult cardReleased(HomePageCardReleased value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(HomePageInitial value),
    TResult cardPressed(HomePageCardPressed value),
    TResult cardReleased(HomePageCardReleased value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult cardPressed(),
    @required TResult cardReleased(),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult cardPressed(),
    TResult cardReleased(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(HomePageInitial value),
    @required TResult cardPressed(HomePageCardPressed value),
    @required TResult cardReleased(HomePageCardReleased value),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(HomePageInitial value),
    TResult cardPressed(HomePageCardPressed value),
    TResult cardReleased(HomePageCardReleased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult cardPressed(),
    @required TResult cardReleased(),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult cardPressed(),
    TResult cardReleased(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cardPressed != null) {
      return cardPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(HomePageInitial value),
    @required TResult cardPressed(HomePageCardPressed value),
    @required TResult cardReleased(HomePageCardReleased value),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(HomePageInitial value),
    TResult cardPressed(HomePageCardPressed value),
    TResult cardReleased(HomePageCardReleased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult cardPressed(),
    @required TResult cardReleased(),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult cardPressed(),
    TResult cardReleased(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cardReleased != null) {
      return cardReleased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(HomePageInitial value),
    @required TResult cardPressed(HomePageCardPressed value),
    @required TResult cardReleased(HomePageCardReleased value),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(HomePageInitial value),
    TResult cardPressed(HomePageCardPressed value),
    TResult cardReleased(HomePageCardReleased value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cardReleased != null) {
      return cardReleased(this);
    }
    return orElse();
  }
}

abstract class HomePageCardReleased implements HomePageState {
  const factory HomePageCardReleased() = _$HomePageCardReleased;
}
