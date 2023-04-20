import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Task({
    String? id,
    String? userId,
    String? title,
    String? description,
    List<String>? labels,
    String? priority,
    String? complexity,
    DateTime? date,
    DateTime? from,
    DateTime? to,
    bool? done,
    bool? remind,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
