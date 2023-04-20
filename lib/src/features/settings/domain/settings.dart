import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:tasker_mobile/src/features/settings/export.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Settings({
    String? id,
    String? userId,
    Notifications? notifications,
    String? theme,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
