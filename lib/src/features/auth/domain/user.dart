import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User extends Equatable {
  final String? id;
  final String? name;
  final String? email;
  final String? password;
  final String? role;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.role,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props =>
      [id, name, email, role, status, createdAt, updatedAt];

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
