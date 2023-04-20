// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginScreenState {
  bool get passwordVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
  @useResult
  $Res call({bool passwordVisible});
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordVisible = null,
  }) {
    return _then(_value.copyWith(
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginScreenStateCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$_LoginScreenStateCopyWith(
          _$_LoginScreenState value, $Res Function(_$_LoginScreenState) then) =
      __$$_LoginScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool passwordVisible});
}

/// @nodoc
class __$$_LoginScreenStateCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$_LoginScreenState>
    implements _$$_LoginScreenStateCopyWith<$Res> {
  __$$_LoginScreenStateCopyWithImpl(
      _$_LoginScreenState _value, $Res Function(_$_LoginScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordVisible = null,
  }) {
    return _then(_$_LoginScreenState(
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginScreenState
    with DiagnosticableTreeMixin
    implements _LoginScreenState {
  const _$_LoginScreenState({this.passwordVisible = false});

  @override
  @JsonKey()
  final bool passwordVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginScreenState(passwordVisible: $passwordVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginScreenState'))
      ..add(DiagnosticsProperty('passwordVisible', passwordVisible));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginScreenState &&
            (identical(other.passwordVisible, passwordVisible) ||
                other.passwordVisible == passwordVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginScreenStateCopyWith<_$_LoginScreenState> get copyWith =>
      __$$_LoginScreenStateCopyWithImpl<_$_LoginScreenState>(this, _$identity);
}

abstract class _LoginScreenState implements LoginScreenState {
  const factory _LoginScreenState({final bool passwordVisible}) =
      _$_LoginScreenState;

  @override
  bool get passwordVisible;
  @override
  @JsonKey(ignore: true)
  _$$_LoginScreenStateCopyWith<_$_LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
