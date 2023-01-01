import 'package:equatable/equatable.dart';

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
  List<Object?> get props => [id, email];

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      role: json['role'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'role': role,
      'status': status,
      'created_at': createdAt == null ? null : createdAt!.toIso8601String(),
      'updated_at': updatedAt == null ? null : updatedAt!.toIso8601String(),
    };
  }
}
