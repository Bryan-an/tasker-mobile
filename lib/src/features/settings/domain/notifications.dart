// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notifications.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Notifications extends Equatable {
  final bool? email;
  final bool? mobile;

  const Notifications({
    this.email,
    this.mobile,
  });

  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationsToJson(this);

  @override
  List<Object?> get props => [
        email,
        mobile,
      ];

  Notifications copyWith({
    bool? email,
    bool? mobile,
  }) {
    return Notifications(
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
    );
  }
}
