// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyEmailScreenState {
  int get timerCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyEmailScreenStateCopyWith<VerifyEmailScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailScreenStateCopyWith<$Res> {
  factory $VerifyEmailScreenStateCopyWith(VerifyEmailScreenState value,
          $Res Function(VerifyEmailScreenState) then) =
      _$VerifyEmailScreenStateCopyWithImpl<$Res, VerifyEmailScreenState>;
  @useResult
  $Res call({int timerCount});
}

/// @nodoc
class _$VerifyEmailScreenStateCopyWithImpl<$Res,
        $Val extends VerifyEmailScreenState>
    implements $VerifyEmailScreenStateCopyWith<$Res> {
  _$VerifyEmailScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timerCount = null,
  }) {
    return _then(_value.copyWith(
      timerCount: null == timerCount
          ? _value.timerCount
          : timerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyEmailScreenStateCopyWith<$Res>
    implements $VerifyEmailScreenStateCopyWith<$Res> {
  factory _$$_VerifyEmailScreenStateCopyWith(_$_VerifyEmailScreenState value,
          $Res Function(_$_VerifyEmailScreenState) then) =
      __$$_VerifyEmailScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timerCount});
}

/// @nodoc
class __$$_VerifyEmailScreenStateCopyWithImpl<$Res>
    extends _$VerifyEmailScreenStateCopyWithImpl<$Res,
        _$_VerifyEmailScreenState>
    implements _$$_VerifyEmailScreenStateCopyWith<$Res> {
  __$$_VerifyEmailScreenStateCopyWithImpl(_$_VerifyEmailScreenState _value,
      $Res Function(_$_VerifyEmailScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timerCount = null,
  }) {
    return _then(_$_VerifyEmailScreenState(
      timerCount: null == timerCount
          ? _value.timerCount
          : timerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_VerifyEmailScreenState
    with DiagnosticableTreeMixin
    implements _VerifyEmailScreenState {
  const _$_VerifyEmailScreenState({this.timerCount = _duration});

  @override
  @JsonKey()
  final int timerCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VerifyEmailScreenState(timerCount: $timerCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VerifyEmailScreenState'))
      ..add(DiagnosticsProperty('timerCount', timerCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyEmailScreenState &&
            (identical(other.timerCount, timerCount) ||
                other.timerCount == timerCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timerCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyEmailScreenStateCopyWith<_$_VerifyEmailScreenState> get copyWith =>
      __$$_VerifyEmailScreenStateCopyWithImpl<_$_VerifyEmailScreenState>(
          this, _$identity);
}

abstract class _VerifyEmailScreenState implements VerifyEmailScreenState {
  const factory _VerifyEmailScreenState({final int timerCount}) =
      _$_VerifyEmailScreenState;

  @override
  int get timerCount;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyEmailScreenStateCopyWith<_$_VerifyEmailScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
