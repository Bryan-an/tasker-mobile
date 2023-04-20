import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed
class Notifications with _$Notifications {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Notifications({
    bool? email,
    bool? mobile,
  }) = _Notifications;

  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);
}
