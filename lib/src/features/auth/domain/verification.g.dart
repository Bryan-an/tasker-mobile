// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Verification _$$_VerificationFromJson(Map<String, dynamic> json) =>
    _$_Verification(
      email: json['email'] as String?,
      code: json['code'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$$_VerificationToJson(_$_Verification instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'expires_at': instance.expiresAt?.toIso8601String(),
    };
