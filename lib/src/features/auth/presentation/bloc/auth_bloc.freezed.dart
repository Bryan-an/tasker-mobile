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
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginImpl(
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

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.user});

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
            other is _$LoginImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

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
  const factory _Login({required final User user}) = _$LoginImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithFacebookImplCopyWith<$Res> {
  factory _$$LoginWithFacebookImplCopyWith(_$LoginWithFacebookImpl value,
          $Res Function(_$LoginWithFacebookImpl) then) =
      __$$LoginWithFacebookImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithFacebookImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithFacebookImpl>
    implements _$$LoginWithFacebookImplCopyWith<$Res> {
  __$$LoginWithFacebookImplCopyWithImpl(_$LoginWithFacebookImpl _value,
      $Res Function(_$LoginWithFacebookImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithFacebookImpl implements _LoginWithFacebook {
  const _$LoginWithFacebookImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithFacebookImpl);
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
  const factory _LoginWithFacebook() = _$LoginWithFacebookImpl;
}

/// @nodoc
abstract class _$$LoginWithGoogleImplCopyWith<$Res> {
  factory _$$LoginWithGoogleImplCopyWith(_$LoginWithGoogleImpl value,
          $Res Function(_$LoginWithGoogleImpl) then) =
      __$$LoginWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithGoogleImpl>
    implements _$$LoginWithGoogleImplCopyWith<$Res> {
  __$$LoginWithGoogleImplCopyWithImpl(
      _$LoginWithGoogleImpl _value, $Res Function(_$LoginWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithGoogleImpl implements _LoginWithGoogle {
  const _$LoginWithGoogleImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithGoogleImpl);
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
  const factory _LoginWithGoogle() = _$LoginWithGoogleImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RegisterImpl(
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

class _$RegisterImpl implements _Register {
  const _$RegisterImpl({required this.user});

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
            other is _$RegisterImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

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
  const factory _Register({required final User user}) = _$RegisterImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
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
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$StartAppImplCopyWith<$Res> {
  factory _$$StartAppImplCopyWith(
          _$StartAppImpl value, $Res Function(_$StartAppImpl) then) =
      __$$StartAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAppImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartAppImpl>
    implements _$$StartAppImplCopyWith<$Res> {
  __$$StartAppImplCopyWithImpl(
      _$StartAppImpl _value, $Res Function(_$StartAppImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartAppImpl implements _StartApp {
  const _$StartAppImpl();

  @override
  String toString() {
    return 'AuthEvent.startApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartAppImpl);
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
  const factory _StartApp() = _$StartAppImpl;
}

/// @nodoc
abstract class _$$VerifyEmailImplCopyWith<$Res> {
  factory _$$VerifyEmailImplCopyWith(
          _$VerifyEmailImpl value, $Res Function(_$VerifyEmailImpl) then) =
      __$$VerifyEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Verification data});

  $VerificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$VerifyEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyEmailImpl>
    implements _$$VerifyEmailImplCopyWith<$Res> {
  __$$VerifyEmailImplCopyWithImpl(
      _$VerifyEmailImpl _value, $Res Function(_$VerifyEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$VerifyEmailImpl(
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

class _$VerifyEmailImpl implements _VerifyEmail {
  const _$VerifyEmailImpl({required this.data});

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
            other is _$VerifyEmailImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailImplCopyWith<_$VerifyEmailImpl> get copyWith =>
      __$$VerifyEmailImplCopyWithImpl<_$VerifyEmailImpl>(this, _$identity);

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
      _$VerifyEmailImpl;

  Verification get data;
  @JsonKey(ignore: true)
  _$$VerifyEmailImplCopyWith<_$VerifyEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendCodeImplCopyWith<$Res> {
  factory _$$ResendCodeImplCopyWith(
          _$ResendCodeImpl value, $Res Function(_$ResendCodeImpl) then) =
      __$$ResendCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Verification data});

  $VerificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResendCodeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendCodeImpl>
    implements _$$ResendCodeImplCopyWith<$Res> {
  __$$ResendCodeImplCopyWithImpl(
      _$ResendCodeImpl _value, $Res Function(_$ResendCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ResendCodeImpl(
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

class _$ResendCodeImpl implements _ResendCode {
  const _$ResendCodeImpl({required this.data});

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
            other is _$ResendCodeImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendCodeImplCopyWith<_$ResendCodeImpl> get copyWith =>
      __$$ResendCodeImplCopyWithImpl<_$ResendCodeImpl>(this, _$identity);

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
  const factory _ResendCode({required final Verification data}) =
      _$ResendCodeImpl;

  Verification get data;
  @JsonKey(ignore: true)
  _$$ResendCodeImplCopyWith<_$ResendCodeImpl> get copyWith =>
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
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
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
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
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
    return _then(_$AuthStateImpl(
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

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
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
            other is _$AuthStateImpl &&
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
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
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
      final Status resendCodeStatus}) = _$AuthStateImpl;

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
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
