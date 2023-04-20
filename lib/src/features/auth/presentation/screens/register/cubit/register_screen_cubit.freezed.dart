// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterScreenState {
  bool get passwordVisible => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterScreenStateCopyWith<RegisterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenStateCopyWith<$Res> {
  factory $RegisterScreenStateCopyWith(
          RegisterScreenState value, $Res Function(RegisterScreenState) then) =
      _$RegisterScreenStateCopyWithImpl<$Res, RegisterScreenState>;
  @useResult
  $Res call({bool passwordVisible, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterScreenStateCopyWithImpl<$Res, $Val extends RegisterScreenState>
    implements $RegisterScreenStateCopyWith<$Res> {
  _$RegisterScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordVisible = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterScreenStateCopyWith<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  factory _$$_RegisterScreenStateCopyWith(_$_RegisterScreenState value,
          $Res Function(_$_RegisterScreenState) then) =
      __$$_RegisterScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool passwordVisible, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_RegisterScreenStateCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res, _$_RegisterScreenState>
    implements _$$_RegisterScreenStateCopyWith<$Res> {
  __$$_RegisterScreenStateCopyWithImpl(_$_RegisterScreenState _value,
      $Res Function(_$_RegisterScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordVisible = null,
    Object? user = null,
  }) {
    return _then(_$_RegisterScreenState(
      passwordVisible: null == passwordVisible
          ? _value.passwordVisible
          : passwordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_RegisterScreenState
    with DiagnosticableTreeMixin
    implements _RegisterScreenState {
  const _$_RegisterScreenState(
      {this.passwordVisible = false, this.user = const User()});

  @override
  @JsonKey()
  final bool passwordVisible;
  @override
  @JsonKey()
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterScreenState(passwordVisible: $passwordVisible, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterScreenState'))
      ..add(DiagnosticsProperty('passwordVisible', passwordVisible))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterScreenState &&
            (identical(other.passwordVisible, passwordVisible) ||
                other.passwordVisible == passwordVisible) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordVisible, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterScreenStateCopyWith<_$_RegisterScreenState> get copyWith =>
      __$$_RegisterScreenStateCopyWithImpl<_$_RegisterScreenState>(
          this, _$identity);
}

abstract class _RegisterScreenState implements RegisterScreenState {
  const factory _RegisterScreenState(
      {final bool passwordVisible, final User user}) = _$_RegisterScreenState;

  @override
  bool get passwordVisible;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterScreenStateCopyWith<_$_RegisterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
