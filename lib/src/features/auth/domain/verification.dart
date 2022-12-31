import 'package:equatable/equatable.dart';

class Verification extends Equatable {
  final String? email;
  final String? code;
  final DateTime? expiresAt;

  const Verification({this.email, this.code, this.expiresAt});

  @override
  List<Object?> get props => [email, code, expiresAt];

  factory Verification.fromJson(Map<String, dynamic> json) {
    return Verification(
      email: json['email'],
      code: json['code'],
      expiresAt: DateTime.parse(json['expires_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'code': code,
      'expires_at': expiresAt == null ? null : expiresAt!.toIso8601String(),
    };
  }
}
