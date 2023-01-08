// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Task extends Equatable {
  final String? id;
  final String? userId;
  final String? title;
  final String? description;
  final List<String>? labels;
  final String? priority;
  final String? complexity;
  final DateTime? date;
  final DateTime? from;
  final DateTime? to;
  final bool? done;
  final bool? remind;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Task({
    this.id,
    this.userId,
    this.title,
    this.description,
    this.labels,
    this.priority,
    this.complexity,
    this.date,
    this.from,
    this.to,
    this.done,
    this.remind,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        title,
        description,
        labels,
        priority,
        complexity,
        date,
        from,
        to,
        done,
        remind,
        status,
        createdAt,
        updatedAt,
      ];

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);

  Task copyWith({
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
  }) {
    return Task(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      labels: labels ?? this.labels,
      priority: priority ?? this.priority,
      complexity: complexity ?? this.complexity,
      date: date ?? this.date,
      from: from ?? this.from,
      to: to ?? this.to,
      done: done ?? this.done,
      remind: remind ?? this.remind,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
