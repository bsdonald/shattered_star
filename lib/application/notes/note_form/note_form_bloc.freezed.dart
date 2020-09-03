// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

  _ColorChanged colorChanged(Color bodyStr) {
    return _ColorChanged(
      bodyStr,
    );
  }

  _TodosChanged todosChanged(Color bodyStr) {
    return _TodosChanged(
      bodyStr,
    );
  }
}

// ignore: unused_element
const $NoteFormEvent = _$NoteFormEventTearOff();

mixin _$NoteFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color bodyStr),
    @required Result todosChanged(Color bodyStr),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color bodyStr),
    Result todosChanged(Color bodyStr),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    @required Result orElse(),
  });
}

abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

class __$BodyChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

class _$_BodyChanged with DiagnosticableTreeMixin implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteFormEvent.bodyChanged'))
      ..add(DiagnosticsProperty('bodyStr', bodyStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color bodyStr),
    @required Result todosChanged(Color bodyStr),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color bodyStr),
    Result todosChanged(Color bodyStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color bodyStr});
}

class __$ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_ColorChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as Color,
    ));
  }
}

class _$_ColorChanged with DiagnosticableTreeMixin implements _ColorChanged {
  const _$_ColorChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final Color bodyStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteFormEvent.colorChanged(bodyStr: $bodyStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteFormEvent.colorChanged'))
      ..add(DiagnosticsProperty('bodyStr', bodyStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color bodyStr),
    @required Result todosChanged(Color bodyStr),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return colorChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color bodyStr),
    Result todosChanged(Color bodyStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteFormEvent {
  const factory _ColorChanged(Color bodyStr) = _$_ColorChanged;

  Color get bodyStr;
  _$ColorChangedCopyWith<_ColorChanged> get copyWith;
}

abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({Color bodyStr});
}

class __$TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_TodosChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as Color,
    ));
  }
}

class _$_TodosChanged with DiagnosticableTreeMixin implements _TodosChanged {
  const _$_TodosChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final Color bodyStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteFormEvent.todosChanged(bodyStr: $bodyStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteFormEvent.todosChanged'))
      ..add(DiagnosticsProperty('bodyStr', bodyStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result bodyChanged(String bodyStr),
    @required Result colorChanged(Color bodyStr),
    @required Result todosChanged(Color bodyStr),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return todosChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result bodyChanged(String bodyStr),
    Result colorChanged(Color bodyStr),
    Result todosChanged(Color bodyStr),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result bodyChanged(_BodyChanged value),
    @required Result colorChanged(_ColorChanged value),
    @required Result todosChanged(_TodosChanged value),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result bodyChanged(_BodyChanged value),
    Result colorChanged(_ColorChanged value),
    Result todosChanged(_TodosChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(Color bodyStr) = _$_TodosChanged;

  Color get bodyStr;
  _$TodosChangedCopyWith<_TodosChanged> get copyWith;
}

class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

// ignore: unused_element
const $NoteFormState = _$NoteFormStateTearOff();

mixin _$NoteFormState {}

abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
}

class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteFormState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NoteFormState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Initial implements NoteFormState {
  const factory _Initial() = _$_Initial;
}
