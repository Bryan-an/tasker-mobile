import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasker_mobile/src/features/settings/domain/notifications.dart';
import 'package:tasker_mobile/src/features/settings/domain/theme_mode_converter.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Settings({
    String? id,
    String? userId,
    Notifications? notifications,
    @ThemeModeConverter() ThemeMode? theme,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
