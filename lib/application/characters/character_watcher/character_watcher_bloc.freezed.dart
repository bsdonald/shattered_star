// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'character_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

// ignore: unused_element
const $CharacterWatcherEvent = _$CharacterWatcherEventTearOff();

mixin _$CharacterWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result charactersReceived(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result charactersReceived(
        Either<CharacterFailure, KtList<Character>> failureOrCharacters),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result charactersReceived(_CharactersReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result charactersReceived(_CharactersReceived value),
    @required Result orElse(),
  });
}

abstract class $CharacterWatcherEventCopyWith<$Res> {
  factory $CharacterWatcherEventCopyWith(CharacterWatcherEvent value,
          $Res Function(CharacterWatcherEvent) then) =
      _$CharacterWatcherEventCopyWithImpl<$Res>;
}

class _$CharacterWatcherEventCopyWithImpl<$Res>
    implements $CharacterWatcherEventCopyWith<$Res> {
  _$CharacterWatcherEventCopyWithImpl(this._value, this._then);

  final CharacterWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$CharacterWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

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
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result charactersReceived(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters),
  }) {
    assert(watchAllStarted != null);
    assert(charactersReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result charactersReceived(
        Either<CharacterFailure, KtList<Character>> failureOrCharacters),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result charactersReceived(_CharactersReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(charactersReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result charactersReceived(_CharactersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CharacterWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$CharactersReceivedCopyWith<$Res> {
  factory _$CharactersReceivedCopyWith(
          _CharactersReceived value, $Res Function(_CharactersReceived) then) =
      __$CharactersReceivedCopyWithImpl<$Res>;
  $Res call({Either<CharacterFailure, KtList<Character>> failureOrCharacters});
}

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
    Object failureOrCharacters = freezed,
  }) {
    return _then(_CharactersReceived(
      failureOrCharacters == freezed
          ? _value.failureOrCharacters
          : failureOrCharacters as Either<CharacterFailure, KtList<Character>>,
    ));
  }
}

class _$_CharactersReceived implements _CharactersReceived {
  const _$_CharactersReceived(this.failureOrCharacters)
      : assert(failureOrCharacters != null);

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

  @override
  _$CharactersReceivedCopyWith<_CharactersReceived> get copyWith =>
      __$CharactersReceivedCopyWithImpl<_CharactersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result charactersReceived(
            Either<CharacterFailure, KtList<Character>> failureOrCharacters),
  }) {
    assert(watchAllStarted != null);
    assert(charactersReceived != null);
    return charactersReceived(failureOrCharacters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result charactersReceived(
        Either<CharacterFailure, KtList<Character>> failureOrCharacters),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (charactersReceived != null) {
      return charactersReceived(failureOrCharacters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result charactersReceived(_CharactersReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(charactersReceived != null);
    return charactersReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result charactersReceived(_CharactersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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

  Either<CharacterFailure, KtList<Character>> get failureOrCharacters;
  _$CharactersReceivedCopyWith<_CharactersReceived> get copyWith;
}

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

// ignore: unused_element
const $CharacterWatcherState = _$CharacterWatcherStateTearOff();

mixin _$CharacterWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Character> characters),
    @required Result loadFailure(CharacterFailure characterFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Character> characters),
    Result loadFailure(CharacterFailure characterFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $CharacterWatcherStateCopyWith<$Res> {
  factory $CharacterWatcherStateCopyWith(CharacterWatcherState value,
          $Res Function(CharacterWatcherState) then) =
      _$CharacterWatcherStateCopyWithImpl<$Res>;
}

class _$CharacterWatcherStateCopyWithImpl<$Res>
    implements $CharacterWatcherStateCopyWith<$Res> {
  _$CharacterWatcherStateCopyWithImpl(this._value, this._then);

  final CharacterWatcherState _value;
  // ignore: unused_field
  final $Res Function(CharacterWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$CharacterWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Character> characters),
    @required Result loadFailure(CharacterFailure characterFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Character> characters),
    Result loadFailure(CharacterFailure characterFailure),
    @required Result orElse(),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CharacterWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$CharacterWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Character> characters),
    @required Result loadFailure(CharacterFailure characterFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Character> characters),
    Result loadFailure(CharacterFailure characterFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CharacterWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Character> characters});
}

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
    Object characters = freezed,
  }) {
    return _then(_LoadSuccess(
      characters == freezed
          ? _value.characters
          : characters as KtList<Character>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.characters) : assert(characters != null);

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

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Character> characters),
    @required Result loadFailure(CharacterFailure characterFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(characters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Character> characters),
    Result loadFailure(CharacterFailure characterFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CharacterWatcherState {
  const factory _LoadSuccess(KtList<Character> characters) = _$_LoadSuccess;

  KtList<Character> get characters;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CharacterFailure characterFailure});

  $CharacterFailureCopyWith<$Res> get characterFailure;
}

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
    Object characterFailure = freezed,
  }) {
    return _then(_LoadFailure(
      characterFailure == freezed
          ? _value.characterFailure
          : characterFailure as CharacterFailure,
    ));
  }

  @override
  $CharacterFailureCopyWith<$Res> get characterFailure {
    if (_value.characterFailure == null) {
      return null;
    }
    return $CharacterFailureCopyWith<$Res>(_value.characterFailure, (value) {
      return _then(_value.copyWith(characterFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.characterFailure)
      : assert(characterFailure != null);

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

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Character> characters),
    @required Result loadFailure(CharacterFailure characterFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(characterFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Character> characters),
    Result loadFailure(CharacterFailure characterFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(characterFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CharacterWatcherState {
  const factory _LoadFailure(CharacterFailure characterFailure) =
      _$_LoadFailure;

  CharacterFailure get characterFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
