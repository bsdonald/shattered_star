// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomePageEventTearOff {
  const _$HomePageEventTearOff();

  CardPressed cardPressed() {
    return const CardPressed();
  }

  CardReleased cardReleased() {
    return const CardReleased();
  }
}

// ignore: unused_element
const $HomePageEvent = _$HomePageEventTearOff();

mixin _$HomePageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    required Result cardPressed(),
    required Result cardReleased(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cardPressed(),
    Result cardReleased(),
    required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    required Result cardPressed(CardPressed value),
    required Result cardReleased(CardReleased value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cardPressed(CardPressed value),
    Result cardReleased(CardReleased value),
    required Result orElse(),
  });
}

abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res>;
}

class _$HomePageEventCopyWithImpl<$Res>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  final HomePageEvent _value;
  // ignore: unused_field
  final $Res Function(HomePageEvent) _then;
}

abstract class $CardPressedCopyWith<$Res> {
  factory $CardPressedCopyWith(
          CardPressed value, $Res Function(CardPressed) then) =
      _$CardPressedCopyWithImpl<$Res>;
}

class _$CardPressedCopyWithImpl<$Res> extends _$HomePageEventCopyWithImpl<$Res>
    implements $CardPressedCopyWith<$Res> {
  _$CardPressedCopyWithImpl(
      CardPressed _value, $Res Function(CardPressed) _then)
      : super(_value, (v) => _then(v as CardPressed));

  @override
  CardPressed get _value => super._value as CardPressed;
}

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
  Result when<Result extends Object>({
    required Result cardPressed(),
    required Result cardReleased(),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cardPressed(),
    Result cardReleased(),
    required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardPressed != null) {
      return cardPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    required Result cardPressed(CardPressed value),
    required Result cardReleased(CardReleased value),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cardPressed(CardPressed value),
    Result cardReleased(CardReleased value),
    required Result orElse(),
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

abstract class $CardReleasedCopyWith<$Res> {
  factory $CardReleasedCopyWith(
          CardReleased value, $Res Function(CardReleased) then) =
      _$CardReleasedCopyWithImpl<$Res>;
}

class _$CardReleasedCopyWithImpl<$Res> extends _$HomePageEventCopyWithImpl<$Res>
    implements $CardReleasedCopyWith<$Res> {
  _$CardReleasedCopyWithImpl(
      CardReleased _value, $Res Function(CardReleased) _then)
      : super(_value, (v) => _then(v as CardReleased));

  @override
  CardReleased get _value => super._value as CardReleased;
}

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
  Result when<Result extends Object>({
    required Result cardPressed(),
    required Result cardReleased(),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cardPressed(),
    Result cardReleased(),
    required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardReleased != null) {
      return cardReleased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    required Result cardPressed(CardPressed value),
    required Result cardReleased(CardReleased value),
  }) {
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cardPressed(CardPressed value),
    Result cardReleased(CardReleased value),
    required Result orElse(),
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

// ignore: unused_element
const $HomePageState = _$HomePageStateTearOff();

mixin _$HomePageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    required Result initial(),
    required Result cardPressed(),
    required Result cardReleased(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result cardPressed(),
    Result cardReleased(),
    required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    required Result initial(HomePageInitial value),
    required Result cardPressed(HomePageCardPressed value),
    required Result cardReleased(HomePageCardReleased value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomePageInitial value),
    Result cardPressed(HomePageCardPressed value),
    Result cardReleased(HomePageCardReleased value),
    required Result orElse(),
  });
}

abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
}

class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;
}

abstract class $HomePageInitialCopyWith<$Res> {
  factory $HomePageInitialCopyWith(
          HomePageInitial value, $Res Function(HomePageInitial) then) =
      _$HomePageInitialCopyWithImpl<$Res>;
}

class _$HomePageInitialCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageInitialCopyWith<$Res> {
  _$HomePageInitialCopyWithImpl(
      HomePageInitial _value, $Res Function(HomePageInitial) _then)
      : super(_value, (v) => _then(v as HomePageInitial));

  @override
  HomePageInitial get _value => super._value as HomePageInitial;
}

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
  Result when<Result extends Object>({
    required Result initial(),
    required Result cardPressed(),
    required Result cardReleased(),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result cardPressed(),
    Result cardReleased(),
    required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    required Result initial(HomePageInitial value),
    required Result cardPressed(HomePageCardPressed value),
    required Result cardReleased(HomePageCardReleased value),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomePageInitial value),
    Result cardPressed(HomePageCardPressed value),
    Result cardReleased(HomePageCardReleased value),
    required Result orElse(),
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

abstract class $HomePageCardPressedCopyWith<$Res> {
  factory $HomePageCardPressedCopyWith(
          HomePageCardPressed value, $Res Function(HomePageCardPressed) then) =
      _$HomePageCardPressedCopyWithImpl<$Res>;
}

class _$HomePageCardPressedCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageCardPressedCopyWith<$Res> {
  _$HomePageCardPressedCopyWithImpl(
      HomePageCardPressed _value, $Res Function(HomePageCardPressed) _then)
      : super(_value, (v) => _then(v as HomePageCardPressed));

  @override
  HomePageCardPressed get _value => super._value as HomePageCardPressed;
}

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
  Result when<Result extends Object>({
    required Result initial(),
    required Result cardPressed(),
    required Result cardReleased(),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result cardPressed(),
    Result cardReleased(),
    required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardPressed != null) {
      return cardPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    required Result initial(HomePageInitial value),
    required Result cardPressed(HomePageCardPressed value),
    required Result cardReleased(HomePageCardReleased value),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomePageInitial value),
    Result cardPressed(HomePageCardPressed value),
    Result cardReleased(HomePageCardReleased value),
    required Result orElse(),
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

abstract class $HomePageCardReleasedCopyWith<$Res> {
  factory $HomePageCardReleasedCopyWith(HomePageCardReleased value,
          $Res Function(HomePageCardReleased) then) =
      _$HomePageCardReleasedCopyWithImpl<$Res>;
}

class _$HomePageCardReleasedCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageCardReleasedCopyWith<$Res> {
  _$HomePageCardReleasedCopyWithImpl(
      HomePageCardReleased _value, $Res Function(HomePageCardReleased) _then)
      : super(_value, (v) => _then(v as HomePageCardReleased));

  @override
  HomePageCardReleased get _value => super._value as HomePageCardReleased;
}

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
  Result when<Result extends Object>({
    required Result initial(),
    required Result cardPressed(),
    required Result cardReleased(),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result cardPressed(),
    Result cardReleased(),
    required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardReleased != null) {
      return cardReleased();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    required Result initial(HomePageInitial value),
    required Result cardPressed(HomePageCardPressed value),
    required Result cardReleased(HomePageCardReleased value),
  }) {
    assert(initial != null);
    assert(cardPressed != null);
    assert(cardReleased != null);
    return cardReleased(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomePageInitial value),
    Result cardPressed(HomePageCardPressed value),
    Result cardReleased(HomePageCardReleased value),
    required Result orElse(),
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
