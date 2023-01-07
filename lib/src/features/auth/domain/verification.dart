import 'package:equatable/equatable.dart';

class Verification extends Equatable {
  final String? email;
  final String? code;
  final DateTime? expiresAt;

  const Verification({this.email, this.code, this.expiresAt});

  @override
  List<Object?> get props => [email, code, expiresAt];

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'code': code,
      'expires_at': expiresAt?.toIso8601String(),
    };
  }

  factory Verification.fromJson(Map<String, dynamic> map) {
    return Verification(
      email: map['email'] != null ? map['email'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      expiresAt: map['expires_at'] != null
          ? DateTime.parse(map['expires_at'] as String)
          : null,
    );
  }
}
