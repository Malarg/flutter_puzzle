// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

  CommonGameState call(FieldState fieldState) {
    return CommonGameState(
      fieldState,
    );
  }

  ShufflingGameState shuffling(FieldState fieldState) {
    return ShufflingGameState(
      fieldState,
    );
  }

  SolvingGameState solving(FieldState fieldState) {
    return SolvingGameState(
      fieldState,
    );
  }

  TerminatedGameState terminated(FieldState fieldState) {
    return TerminatedGameState(
      fieldState,
    );
  }
}

/// @nodoc
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  FieldState get fieldState => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FieldState fieldState) $default, {
    required TResult Function(FieldState fieldState) shuffling,
    required TResult Function(FieldState fieldState) solving,
    required TResult Function(FieldState fieldState) terminated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonGameState value) $default, {
    required TResult Function(ShufflingGameState value) shuffling,
    required TResult Function(SolvingGameState value) solving,
    required TResult Function(TerminatedGameState value) terminated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
  $Res call({FieldState fieldState});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;

  @override
  $Res call({
    Object? fieldState = freezed,
  }) {
    return _then(_value.copyWith(
      fieldState: fieldState == freezed
          ? _value.fieldState
          : fieldState // ignore: cast_nullable_to_non_nullable
              as FieldState,
    ));
  }
}

/// @nodoc
abstract class $CommonGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory $CommonGameStateCopyWith(
          CommonGameState value, $Res Function(CommonGameState) then) =
      _$CommonGameStateCopyWithImpl<$Res>;
  @override
  $Res call({FieldState fieldState});
}

/// @nodoc
class _$CommonGameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $CommonGameStateCopyWith<$Res> {
  _$CommonGameStateCopyWithImpl(
      CommonGameState _value, $Res Function(CommonGameState) _then)
      : super(_value, (v) => _then(v as CommonGameState));

  @override
  CommonGameState get _value => super._value as CommonGameState;

  @override
  $Res call({
    Object? fieldState = freezed,
  }) {
    return _then(CommonGameState(
      fieldState == freezed
          ? _value.fieldState
          : fieldState // ignore: cast_nullable_to_non_nullable
              as FieldState,
    ));
  }
}

/// @nodoc

class _$CommonGameState
    with DiagnosticableTreeMixin
    implements CommonGameState {
  const _$CommonGameState(this.fieldState);

  @override
  final FieldState fieldState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState(fieldState: $fieldState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState'))
      ..add(DiagnosticsProperty('fieldState', fieldState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonGameState &&
            const DeepCollectionEquality()
                .equals(other.fieldState, fieldState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fieldState));

  @JsonKey(ignore: true)
  @override
  $CommonGameStateCopyWith<CommonGameState> get copyWith =>
      _$CommonGameStateCopyWithImpl<CommonGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FieldState fieldState) $default, {
    required TResult Function(FieldState fieldState) shuffling,
    required TResult Function(FieldState fieldState) solving,
    required TResult Function(FieldState fieldState) terminated,
  }) {
    return $default(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
  }) {
    return $default?.call(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(fieldState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonGameState value) $default, {
    required TResult Function(ShufflingGameState value) shuffling,
    required TResult Function(SolvingGameState value) solving,
    required TResult Function(TerminatedGameState value) terminated,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommonGameState implements GameState {
  const factory CommonGameState(FieldState fieldState) = _$CommonGameState;

  @override
  FieldState get fieldState;
  @override
  @JsonKey(ignore: true)
  $CommonGameStateCopyWith<CommonGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShufflingGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory $ShufflingGameStateCopyWith(
          ShufflingGameState value, $Res Function(ShufflingGameState) then) =
      _$ShufflingGameStateCopyWithImpl<$Res>;
  @override
  $Res call({FieldState fieldState});
}

/// @nodoc
class _$ShufflingGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res>
    implements $ShufflingGameStateCopyWith<$Res> {
  _$ShufflingGameStateCopyWithImpl(
      ShufflingGameState _value, $Res Function(ShufflingGameState) _then)
      : super(_value, (v) => _then(v as ShufflingGameState));

  @override
  ShufflingGameState get _value => super._value as ShufflingGameState;

  @override
  $Res call({
    Object? fieldState = freezed,
  }) {
    return _then(ShufflingGameState(
      fieldState == freezed
          ? _value.fieldState
          : fieldState // ignore: cast_nullable_to_non_nullable
              as FieldState,
    ));
  }
}

/// @nodoc

class _$ShufflingGameState
    with DiagnosticableTreeMixin
    implements ShufflingGameState {
  const _$ShufflingGameState(this.fieldState);

  @override
  final FieldState fieldState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.shuffling(fieldState: $fieldState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.shuffling'))
      ..add(DiagnosticsProperty('fieldState', fieldState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShufflingGameState &&
            const DeepCollectionEquality()
                .equals(other.fieldState, fieldState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fieldState));

  @JsonKey(ignore: true)
  @override
  $ShufflingGameStateCopyWith<ShufflingGameState> get copyWith =>
      _$ShufflingGameStateCopyWithImpl<ShufflingGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FieldState fieldState) $default, {
    required TResult Function(FieldState fieldState) shuffling,
    required TResult Function(FieldState fieldState) solving,
    required TResult Function(FieldState fieldState) terminated,
  }) {
    return shuffling(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
  }) {
    return shuffling?.call(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
    required TResult orElse(),
  }) {
    if (shuffling != null) {
      return shuffling(fieldState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonGameState value) $default, {
    required TResult Function(ShufflingGameState value) shuffling,
    required TResult Function(SolvingGameState value) solving,
    required TResult Function(TerminatedGameState value) terminated,
  }) {
    return shuffling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
  }) {
    return shuffling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
    required TResult orElse(),
  }) {
    if (shuffling != null) {
      return shuffling(this);
    }
    return orElse();
  }
}

abstract class ShufflingGameState implements GameState {
  const factory ShufflingGameState(FieldState fieldState) =
      _$ShufflingGameState;

  @override
  FieldState get fieldState;
  @override
  @JsonKey(ignore: true)
  $ShufflingGameStateCopyWith<ShufflingGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolvingGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory $SolvingGameStateCopyWith(
          SolvingGameState value, $Res Function(SolvingGameState) then) =
      _$SolvingGameStateCopyWithImpl<$Res>;
  @override
  $Res call({FieldState fieldState});
}

/// @nodoc
class _$SolvingGameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $SolvingGameStateCopyWith<$Res> {
  _$SolvingGameStateCopyWithImpl(
      SolvingGameState _value, $Res Function(SolvingGameState) _then)
      : super(_value, (v) => _then(v as SolvingGameState));

  @override
  SolvingGameState get _value => super._value as SolvingGameState;

  @override
  $Res call({
    Object? fieldState = freezed,
  }) {
    return _then(SolvingGameState(
      fieldState == freezed
          ? _value.fieldState
          : fieldState // ignore: cast_nullable_to_non_nullable
              as FieldState,
    ));
  }
}

/// @nodoc

class _$SolvingGameState
    with DiagnosticableTreeMixin
    implements SolvingGameState {
  const _$SolvingGameState(this.fieldState);

  @override
  final FieldState fieldState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.solving(fieldState: $fieldState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.solving'))
      ..add(DiagnosticsProperty('fieldState', fieldState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SolvingGameState &&
            const DeepCollectionEquality()
                .equals(other.fieldState, fieldState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fieldState));

  @JsonKey(ignore: true)
  @override
  $SolvingGameStateCopyWith<SolvingGameState> get copyWith =>
      _$SolvingGameStateCopyWithImpl<SolvingGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FieldState fieldState) $default, {
    required TResult Function(FieldState fieldState) shuffling,
    required TResult Function(FieldState fieldState) solving,
    required TResult Function(FieldState fieldState) terminated,
  }) {
    return solving(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
  }) {
    return solving?.call(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
    required TResult orElse(),
  }) {
    if (solving != null) {
      return solving(fieldState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonGameState value) $default, {
    required TResult Function(ShufflingGameState value) shuffling,
    required TResult Function(SolvingGameState value) solving,
    required TResult Function(TerminatedGameState value) terminated,
  }) {
    return solving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
  }) {
    return solving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
    required TResult orElse(),
  }) {
    if (solving != null) {
      return solving(this);
    }
    return orElse();
  }
}

abstract class SolvingGameState implements GameState {
  const factory SolvingGameState(FieldState fieldState) = _$SolvingGameState;

  @override
  FieldState get fieldState;
  @override
  @JsonKey(ignore: true)
  $SolvingGameStateCopyWith<SolvingGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminatedGameStateCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory $TerminatedGameStateCopyWith(
          TerminatedGameState value, $Res Function(TerminatedGameState) then) =
      _$TerminatedGameStateCopyWithImpl<$Res>;
  @override
  $Res call({FieldState fieldState});
}

/// @nodoc
class _$TerminatedGameStateCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res>
    implements $TerminatedGameStateCopyWith<$Res> {
  _$TerminatedGameStateCopyWithImpl(
      TerminatedGameState _value, $Res Function(TerminatedGameState) _then)
      : super(_value, (v) => _then(v as TerminatedGameState));

  @override
  TerminatedGameState get _value => super._value as TerminatedGameState;

  @override
  $Res call({
    Object? fieldState = freezed,
  }) {
    return _then(TerminatedGameState(
      fieldState == freezed
          ? _value.fieldState
          : fieldState // ignore: cast_nullable_to_non_nullable
              as FieldState,
    ));
  }
}

/// @nodoc

class _$TerminatedGameState
    with DiagnosticableTreeMixin
    implements TerminatedGameState {
  const _$TerminatedGameState(this.fieldState);

  @override
  final FieldState fieldState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.terminated(fieldState: $fieldState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.terminated'))
      ..add(DiagnosticsProperty('fieldState', fieldState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TerminatedGameState &&
            const DeepCollectionEquality()
                .equals(other.fieldState, fieldState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fieldState));

  @JsonKey(ignore: true)
  @override
  $TerminatedGameStateCopyWith<TerminatedGameState> get copyWith =>
      _$TerminatedGameStateCopyWithImpl<TerminatedGameState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(FieldState fieldState) $default, {
    required TResult Function(FieldState fieldState) shuffling,
    required TResult Function(FieldState fieldState) solving,
    required TResult Function(FieldState fieldState) terminated,
  }) {
    return terminated(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
  }) {
    return terminated?.call(fieldState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(FieldState fieldState)? $default, {
    TResult Function(FieldState fieldState)? shuffling,
    TResult Function(FieldState fieldState)? solving,
    TResult Function(FieldState fieldState)? terminated,
    required TResult orElse(),
  }) {
    if (terminated != null) {
      return terminated(fieldState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonGameState value) $default, {
    required TResult Function(ShufflingGameState value) shuffling,
    required TResult Function(SolvingGameState value) solving,
    required TResult Function(TerminatedGameState value) terminated,
  }) {
    return terminated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
  }) {
    return terminated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonGameState value)? $default, {
    TResult Function(ShufflingGameState value)? shuffling,
    TResult Function(SolvingGameState value)? solving,
    TResult Function(TerminatedGameState value)? terminated,
    required TResult orElse(),
  }) {
    if (terminated != null) {
      return terminated(this);
    }
    return orElse();
  }
}

abstract class TerminatedGameState implements GameState {
  const factory TerminatedGameState(FieldState fieldState) =
      _$TerminatedGameState;

  @override
  FieldState get fieldState;
  @override
  @JsonKey(ignore: true)
  $TerminatedGameStateCopyWith<TerminatedGameState> get copyWith =>
      throw _privateConstructorUsedError;
}
