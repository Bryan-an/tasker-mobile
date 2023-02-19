// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:tasker_mobile/src/features/settings/export.dart';

part 'settings.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Settings extends Equatable {
  final String? id;
  final String? userId;
  final Notifications? notifications;
  final String? theme;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Settings({
    this.id,
    this.userId,
    this.notifications,
    this.theme,
    this.createdAt,
    this.updatedAt,
  });

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsToJson(this);

  @override
  List<Object?> get props => [
        id,
        userId,
        notifications,
        theme,
        createdAt,
        updatedAt,
      ];

  Settings copyWith({
    String? id,
    String? userId,
    Notifications? notifications,
    String? theme,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Settings(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      notifications: notifications ?? this.notifications,
      theme: theme ?? this.theme,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
