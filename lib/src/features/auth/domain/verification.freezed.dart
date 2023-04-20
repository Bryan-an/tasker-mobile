// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Verification _$VerificationFromJson(Map<String, dynamic> json) {
  return _Verification.fromJson(json);
}

/// @nodoc
mixin _$Verification {
  String? get email => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationCopyWith<Verification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCopyWith<$Res> {
  factory $VerificationCopyWith(
          Verification value, $Res Function(Verification) then) =
      _$VerificationCopyWithImpl<$Res, Verification>;
  @useResult
  $Res call({String? email, String? code, DateTime? expiresAt});
}

/// @nodoc
class _$VerificationCopyWithImpl<$Res, $Val extends Verification>
    implements $VerificationCopyWith<$Res> {
  _$VerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationCopyWith<$Res>
    implements $VerificationCopyWith<$Res> {
  factory _$$_VerificationCopyWith(
          _$_Verification value, $Res Function(_$_Verification) then) =
      __$$_VerificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? code, DateTime? expiresAt});
}

/// @nodoc
class __$$_VerificationCopyWithImpl<$Res>
    extends _$VerificationCopyWithImpl<$Res, _$_Verification>
    implements _$$_VerificationCopyWith<$Res> {
  __$$_VerificationCopyWithImpl(
      _$_Verification _value, $Res Function(_$_Verification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$_Verification(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Verification with DiagnosticableTreeMixin implements _Verification {
  const _$_Verification({this.email, this.code, this.expiresAt});

  factory _$_Verification.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationFromJson(json);

  @override
  final String? email;
  @override
  final String? code;
  @override
  final DateTime? expiresAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Verification(email: $email, code: $code, expiresAt: $expiresAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Verification'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('expiresAt', expiresAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verification &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationCopyWith<_$_Verification> get copyWith =>
      __$$_VerificationCopyWithImpl<_$_Verification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationToJson(
      this,
    );
  }
}

abstract class _Verification implements Verification {
  const factory _Verification(
      {final String? email,
      final String? code,
      final DateTime? expiresAt}) = _$_Verification;

  factory _Verification.fromJson(Map<String, dynamic> json) =
      _$_Verification.fromJson;

  @override
  String? get email;
  @override
  String? get code;
  @override
  DateTime? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationCopyWith<_$_Verification> get copyWith =>
      throw _privateConstructorUsedError;
}
