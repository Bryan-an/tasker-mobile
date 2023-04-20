import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'verification.freezed.dart';
part 'verification.g.dart';

@freezed
class Verification with _$Verification {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Verification({
    String? email,
    String? code,
    DateTime? expiresAt,
  }) = _Verification;

  factory Verification.fromJson(Map<String, dynamic> json) =>
      _$VerificationFromJson(json);
}
