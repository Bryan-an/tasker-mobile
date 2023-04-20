// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      notifications: json['notifications'] == null
          ? null
          : Notifications.fromJson(
              json['notifications'] as Map<String, dynamic>),
      theme: json['theme'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'notifications': instance.notifications,
      'theme': instance.theme,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
