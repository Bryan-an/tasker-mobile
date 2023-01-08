import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verification.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Verification extends Equatable {
  final String? email;
  final String? code;
  final DateTime? expiresAt;

  const Verification({this.email, this.code, this.expiresAt});

  @override
  List<Object?> get props => [email, code, expiresAt];

  factory Verification.fromJson(Map<String, dynamic> json) =>
      _$VerificationFromJson(json);

  Map<String, dynamic> toJson() => _$VerificationToJson(this);
}
