// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Login(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.login(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login({required final User user}) = _$_Login;

  User get user;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginWithFacebookCopyWith<$Res> {
  factory _$$_LoginWithFacebookCopyWith(_$_LoginWithFacebook value,
          $Res Function(_$_LoginWithFacebook) then) =
      __$$_LoginWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginWithFacebookCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LoginWithFacebook>
    implements _$$_LoginWithFacebookCopyWith<$Res> {
  __$$_LoginWithFacebookCopyWithImpl(
      _$_LoginWithFacebook _value, $Res Function(_$_LoginWithFacebook) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginWithFacebook implements _LoginWithFacebook {
  const _$_LoginWithFacebook();

  @override
  String toString() {
    return 'AuthEvent.loginWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return loginWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return loginWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return loginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return loginWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _LoginWithFacebook implements AuthEvent {
  const factory _LoginWithFacebook() = _$_LoginWithFacebook;
}

/// @nodoc
abstract class _$$_LoginWithGoogleCopyWith<$Res> {
  factory _$$_LoginWithGoogleCopyWith(
          _$_LoginWithGoogle value, $Res Function(_$_LoginWithGoogle) then) =
      __$$_LoginWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LoginWithGoogle>
    implements _$$_LoginWithGoogleCopyWith<$Res> {
  __$$_LoginWithGoogleCopyWithImpl(
      _$_LoginWithGoogle _value, $Res Function(_$_LoginWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginWithGoogle implements _LoginWithGoogle {
  const _$_LoginWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGoogle implements AuthEvent {
  const factory _LoginWithGoogle() = _$_LoginWithGoogle;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Register(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.register(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return register(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return register?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register({required final User user}) = _$_Register;

  User get user;
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_StartAppCopyWith<$Res> {
  factory _$$_StartAppCopyWith(
          _$_StartApp value, $Res Function(_$_StartApp) then) =
      __$$_StartAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartAppCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_StartApp>
    implements _$$_StartAppCopyWith<$Res> {
  __$$_StartAppCopyWithImpl(
      _$_StartApp _value, $Res Function(_$_StartApp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartApp implements _StartApp {
  const _$_StartApp();

  @override
  String toString() {
    return 'AuthEvent.startApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return startApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return startApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return startApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return startApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp(this);
    }
    return orElse();
  }
}

abstract class _StartApp implements AuthEvent {
  const factory _StartApp() = _$_StartApp;
}

/// @nodoc
abstract class _$$_VerifyEmailCopyWith<$Res> {
  factory _$$_VerifyEmailCopyWith(
          _$_VerifyEmail value, $Res Function(_$_VerifyEmail) then) =
      __$$_VerifyEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({Verification data});

  $VerificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$_VerifyEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_VerifyEmail>
    implements _$$_VerifyEmailCopyWith<$Res> {
  __$$_VerifyEmailCopyWithImpl(
      _$_VerifyEmail _value, $Res Function(_$_VerifyEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_VerifyEmail(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Verification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationCopyWith<$Res> get data {
    return $VerificationCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_VerifyEmail implements _VerifyEmail {
  const _$_VerifyEmail({required this.data});

  @override
  final Verification data;

  @override
  String toString() {
    return 'AuthEvent.verifyEmail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyEmail &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyEmailCopyWith<_$_VerifyEmail> get copyWith =>
      __$$_VerifyEmailCopyWithImpl<_$_VerifyEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return verifyEmail(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return verifyEmail?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmail implements AuthEvent {
  const factory _VerifyEmail({required final Verification data}) =
      _$_VerifyEmail;

  Verification get data;
  @JsonKey(ignore: true)
  _$$_VerifyEmailCopyWith<_$_VerifyEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendCodeCopyWith<$Res> {
  factory _$$_ResendCodeCopyWith(
          _$_ResendCode value, $Res Function(_$_ResendCode) then) =
      __$$_ResendCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({Verification data});

  $VerificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ResendCodeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResendCode>
    implements _$$_ResendCodeCopyWith<$Res> {
  __$$_ResendCodeCopyWithImpl(
      _$_ResendCode _value, $Res Function(_$_ResendCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResendCode(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Verification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationCopyWith<$Res> get data {
    return $VerificationCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_ResendCode implements _ResendCode {
  const _$_ResendCode({required this.data});

  @override
  final Verification data;

  @override
  String toString() {
    return 'AuthEvent.resendCode(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendCode &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendCodeCopyWith<_$_ResendCode> get copyWith =>
      __$$_ResendCodeCopyWithImpl<_$_ResendCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function(User user) register,
    required TResult Function() logout,
    required TResult Function() startApp,
    required TResult Function(Verification data) verifyEmail,
    required TResult Function(Verification data) resendCode,
  }) {
    return resendCode(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? login,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function(User user)? register,
    TResult? Function()? logout,
    TResult? Function()? startApp,
    TResult? Function(Verification data)? verifyEmail,
    TResult? Function(Verification data)? resendCode,
  }) {
    return resendCode?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function(User user)? register,
    TResult Function()? logout,
    TResult Function()? startApp,
    TResult Function(Verification data)? verifyEmail,
    TResult Function(Verification data)? resendCode,
    required TResult orElse(),
  }) {
    if (resendCode != null) {
      return resendCode(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginWithFacebook value) loginWithFacebook,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_ResendCode value) resendCode,
  }) {
    return resendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_ResendCode value)? resendCode,
  }) {
    return resendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginWithFacebook value)? loginWithFacebook,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_StartApp value)? startApp,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_ResendCode value)? resendCode,
    required TResult orElse(),
  }) {
    if (resendCode != null) {
      return resendCode(this);
    }
    return orElse();
  }
}

abstract class _ResendCode implements AuthEvent {
  const factory _ResendCode({required final Verification data}) = _$_ResendCode;

  Verification get data;
  @JsonKey(ignore: true)
  _$$_ResendCodeCopyWith<_$_ResendCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  User get user => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;
  Status get loginStatus => throw _privateConstructorUsedError;
  Status get loginFacebookStatus => throw _privateConstructorUsedError;
  Status get loginGoogleStatus => throw _privateConstructorUsedError;
  Status get logoutStatus => throw _privateConstructorUsedError;
  Status get registerStatus => throw _privateConstructorUsedError;
  Status get verifyEmailStatus => throw _privateConstructorUsedError;
  Status get resendCodeStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {User user,
      bool initialized,
      Status loginStatus,
      Status loginFacebookStatus,
      Status loginGoogleStatus,
      Status logoutStatus,
      Status registerStatus,
      Status verifyEmailStatus,
      Status resendCodeStatus});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? initialized = null,
    Object? loginStatus = null,
    Object? loginFacebookStatus = null,
    Object? loginGoogleStatus = null,
    Object? logoutStatus = null,
    Object? registerStatus = null,
    Object? verifyEmailStatus = null,
    Object? resendCodeStatus = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      loginFacebookStatus: null == loginFacebookStatus
          ? _value.loginFacebookStatus
          : loginFacebookStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      loginGoogleStatus: null == loginGoogleStatus
          ? _value.loginGoogleStatus
          : loginGoogleStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      verifyEmailStatus: null == verifyEmailStatus
          ? _value.verifyEmailStatus
          : verifyEmailStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      resendCodeStatus: null == resendCodeStatus
          ? _value.resendCodeStatus
          : resendCodeStatus // ignore: cast_nullable_to_non_nullable
              as Status,
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
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      bool initialized,
      Status loginStatus,
      Status loginFacebookStatus,
      Status loginGoogleStatus,
      Status logoutStatus,
      Status registerStatus,
      Status verifyEmailStatus,
      Status resendCodeStatus});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? initialized = null,
    Object? loginStatus = null,
    Object? loginFacebookStatus = null,
    Object? loginGoogleStatus = null,
    Object? logoutStatus = null,
    Object? registerStatus = null,
    Object? verifyEmailStatus = null,
    Object? resendCodeStatus = null,
  }) {
    return _then(_$_AuthState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      loginFacebookStatus: null == loginFacebookStatus
          ? _value.loginFacebookStatus
          : loginFacebookStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      loginGoogleStatus: null == loginGoogleStatus
          ? _value.loginGoogleStatus
          : loginGoogleStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      verifyEmailStatus: null == verifyEmailStatus
          ? _value.verifyEmailStatus
          : verifyEmailStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      resendCodeStatus: null == resendCodeStatus
          ? _value.resendCodeStatus
          : resendCodeStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.user = const User(),
      this.initialized = false,
      this.loginStatus = Status.initial,
      this.loginFacebookStatus = Status.initial,
      this.loginGoogleStatus = Status.initial,
      this.logoutStatus = Status.initial,
      this.registerStatus = Status.initial,
      this.verifyEmailStatus = Status.initial,
      this.resendCodeStatus = Status.initial});

  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final bool initialized;
  @override
  @JsonKey()
  final Status loginStatus;
  @override
  @JsonKey()
  final Status loginFacebookStatus;
  @override
  @JsonKey()
  final Status loginGoogleStatus;
  @override
  @JsonKey()
  final Status logoutStatus;
  @override
  @JsonKey()
  final Status registerStatus;
  @override
  @JsonKey()
  final Status verifyEmailStatus;
  @override
  @JsonKey()
  final Status resendCodeStatus;

  @override
  String toString() {
    return 'AuthState(user: $user, initialized: $initialized, loginStatus: $loginStatus, loginFacebookStatus: $loginFacebookStatus, loginGoogleStatus: $loginGoogleStatus, logoutStatus: $logoutStatus, registerStatus: $registerStatus, verifyEmailStatus: $verifyEmailStatus, resendCodeStatus: $resendCodeStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.loginFacebookStatus, loginFacebookStatus) ||
                other.loginFacebookStatus == loginFacebookStatus) &&
            (identical(other.loginGoogleStatus, loginGoogleStatus) ||
                other.loginGoogleStatus == loginGoogleStatus) &&
            (identical(other.logoutStatus, logoutStatus) ||
                other.logoutStatus == logoutStatus) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.verifyEmailStatus, verifyEmailStatus) ||
                other.verifyEmailStatus == verifyEmailStatus) &&
            (identical(other.resendCodeStatus, resendCodeStatus) ||
                other.resendCodeStatus == resendCodeStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      initialized,
      loginStatus,
      loginFacebookStatus,
      loginGoogleStatus,
      logoutStatus,
      registerStatus,
      verifyEmailStatus,
      resendCodeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final User user,
      final bool initialized,
      final Status loginStatus,
      final Status loginFacebookStatus,
      final Status loginGoogleStatus,
      final Status logoutStatus,
      final Status registerStatus,
      final Status verifyEmailStatus,
      final Status resendCodeStatus}) = _$_AuthState;

  @override
  User get user;
  @override
  bool get initialized;
  @override
  Status get loginStatus;
  @override
  Status get loginFacebookStatus;
  @override
  Status get loginGoogleStatus;
  @override
  Status get logoutStatus;
  @override
  Status get registerStatus;
  @override
  Status get verifyEmailStatus;
  @override
  Status get resendCodeStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
