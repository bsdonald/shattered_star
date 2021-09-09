// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'character_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterWatcherEventTearOff {
  const _$CharacterWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _CharactersReceived charactersReceived(
      Either<CharacterFailure, KtList<Character>> failureOrCharacters) {
    return _CharactersReceived(
      failureOrCharacters,
    );
  }
}

/// @nodoc
const $CharacterWatcherEvent = _$CharacterWatcherEventTearOff();

/// @nodoc
mixin _$CharacterWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters)
        charactersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters)?
        charactersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_CharactersReceived value) charactersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterWatcherEventCopyWith<$Res> {
  factory $CharacterWatcherEventCopyWith(CharacterWatcherEvent value,
          $Res Function(CharacterWatcherEvent) then) =
      _$CharacterWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterWatcherEventCopyWithImpl<$Res>
    implements $CharacterWatcherEventCopyWith<$Res> {
  _$CharacterWatcherEventCopyWithImpl(this._value, this._then);

  final CharacterWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$CharacterWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'CharacterWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters)
        charactersReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters)?
        charactersReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_CharactersReceived value) charactersReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CharacterWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$CharactersReceivedCopyWith<$Res> {
  factory _$CharactersReceivedCopyWith(
          _CharactersReceived value, $Res Function(_CharactersReceived) then) =
      __$CharactersReceivedCopyWithImpl<$Res>;
  $Res call({Either<CharacterFailure, KtList<Character>> failureOrCharacters});
}

/// @nodoc
class __$CharactersReceivedCopyWithImpl<$Res>
    extends _$CharacterWatcherEventCopyWithImpl<$Res>
    implements _$CharactersReceivedCopyWith<$Res> {
  __$CharactersReceivedCopyWithImpl(
      _CharactersReceived _value, $Res Function(_CharactersReceived) _then)
      : super(_value, (v) => _then(v as _CharactersReceived));

  @override
  _CharactersReceived get _value => super._value as _CharactersReceived;

  @override
  $Res call({
    Object? failureOrCharacters = freezed,
  }) {
    return _then(_CharactersReceived(
      failureOrCharacters == freezed
          ? _value.failureOrCharacters
          : failureOrCharacters // ignore: cast_nullable_to_non_nullable
              as Either<CharacterFailure, KtList<Character>>,
    ));
  }
}

/// @nodoc

class _$_CharactersReceived implements _CharactersReceived {
  const _$_CharactersReceived(this.failureOrCharacters);

  @override
  final Either<CharacterFailure, KtList<Character>> failureOrCharacters;

  @override
  String toString() {
    return 'CharacterWatcherEvent.charactersReceived(failureOrCharacters: $failureOrCharacters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharactersReceived &&
            (identical(other.failureOrCharacters, failureOrCharacters) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCharacters, failureOrCharacters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCharacters);

  @JsonKey(ignore: true)
  @override
  _$CharactersReceivedCopyWith<_CharactersReceived> get copyWith =>
      __$CharactersReceivedCopyWithImpl<_CharactersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters)
        charactersReceived,
  }) {
    return charactersReceived(failureOrCharacters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters)?
        charactersReceived,
    required TResult orElse(),
  }) {
    if (charactersReceived != null) {
      return charactersReceived(failureOrCharacters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_CharactersReceived value) charactersReceived,
  }) {
    return charactersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_CharactersReceived value)? charactersReceived,
    required TResult orElse(),
  }) {
    if (charactersReceived != null) {
      return charactersReceived(this);
    }
    return orElse();
  }
}

abstract class _CharactersReceived implements CharacterWatcherEvent {
  const factory _CharactersReceived(
          Either<CharacterFailure, KtList<Character>> failureOrCharacters) =
      _$_CharactersReceived;

  Either<CharacterFailure, KtList<Character>> get failureOrCharacters =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CharactersReceivedCopyWith<_CharactersReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharacterWatcherStateTearOff {
  const _$CharacterWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Character> characters) {
    return _LoadSuccess(
      characters,
    );
  }

  _LoadFailure loadFailure(CharacterFailure characterFailure) {
    return _LoadFailure(
      characterFailure,
    );
  }
}

/// @nodoc
const $CharacterWatcherState = _$CharacterWatcherStateTearOff();

/// @nodoc
mixin _$CharacterWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Character> characters) loadSuccess,
    required TResult Function(CharacterFailure characterFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Character> characters)? loadSuccess,
    TResult Function(CharacterFailure characterFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterWatcherStateCopyWith<$Res> {
  factory $CharacterWatcherStateCopyWith(CharacterWatcherState value,
          $Res Function(CharacterWatcherState) then) =
      _$CharacterWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterWatcherStateCopyWithImpl<$Res>
    implements $CharacterWatcherStateCopyWith<$Res> {
  _$CharacterWatcherStateCopyWithImpl(this._value, this._then);

  final CharacterWatcherState _value;
  // ignore: unused_field
  final $Res Function(CharacterWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CharacterWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CharacterWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Character> characters) loadSuccess,
    required TResult Function(CharacterFailure characterFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Character> characters)? loadSuccess,
    TResult Function(CharacterFailure characterFailure)? loadFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CharacterWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$CharacterWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'CharacterWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Character> characters) loadSuccess,
    required TResult Function(CharacterFailure characterFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Character> characters)? loadSuccess,
    TResult Function(CharacterFailure characterFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CharacterWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Character> characters});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CharacterWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_LoadSuccess(
      characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as KtList<Character>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.characters);

  @override
  final KtList<Character> characters;

  @override
  String toString() {
    return 'CharacterWatcherState.loadSuccess(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characters);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Character> characters) loadSuccess,
    required TResult Function(CharacterFailure characterFailure) loadFailure,
  }) {
    return loadSuccess(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Character> characters)? loadSuccess,
    TResult Function(CharacterFailure characterFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CharacterWatcherState {
  const factory _LoadSuccess(KtList<Character> characters) = _$_LoadSuccess;

  KtList<Character> get characters => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CharacterFailure characterFailure});

  $CharacterFailureCopyWith<$Res> get characterFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CharacterWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? characterFailure = freezed,
  }) {
    return _then(_LoadFailure(
      characterFailure == freezed
          ? _value.characterFailure
          : characterFailure // ignore: cast_nullable_to_non_nullable
              as CharacterFailure,
    ));
  }

  @override
  $CharacterFailureCopyWith<$Res> get characterFailure {
    return $CharacterFailureCopyWith<$Res>(_value.characterFailure, (value) {
      return _then(_value.copyWith(characterFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.characterFailure);

  @override
  final CharacterFailure characterFailure;

  @override
  String toString() {
    return 'CharacterWatcherState.loadFailure(characterFailure: $characterFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.characterFailure, characterFailure) ||
                const DeepCollectionEquality()
                    .equals(other.characterFailure, characterFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(characterFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Character> characters) loadSuccess,
    required TResult Function(CharacterFailure characterFailure) loadFailure,
  }) {
    return loadFailure(characterFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Character> characters)? loadSuccess,
    TResult Function(CharacterFailure characterFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(characterFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CharacterWatcherState {
  const factory _LoadFailure(CharacterFailure characterFailure) =
      _$_LoadFailure;

  CharacterFailure get characterFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
