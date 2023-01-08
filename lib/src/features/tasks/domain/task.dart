// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'user_id': userId,
      'title': title,
      'description': description,
      'labels': labels,
      'priority': priority,
      'complexity': complexity,
      'date': date?.toIso8601String(),
      'from': from?.toIso8601String(),
      'to': to?.toIso8601String(),
      'done': done,
      'remind': remind,
      'status': status,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(
      id: map['id'] != null ? map['id'] as String : null,
      userId: map['user_id'] != null ? map['user_id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      labels: map['labels'] != null
          ? List<String>.from(map['labels'] as List<dynamic>)
          : null,
      priority: map['priority'] != null ? map['priority'] as String : null,
      complexity:
          map['complexity'] != null ? map['complexity'] as String : null,
      date: map['date'] != null ? DateTime.parse(map['date'] as String) : null,
      from: map['from'] != null ? DateTime.parse(map['from'] as String) : null,
      to: map['to'] != null ? DateTime.parse(map['to'] as String) : null,
      done: map['done'] != null ? map['done'] as bool : null,
      remind: map['remind'] != null ? map['remind'] as bool : null,
      status: map['status'] != null ? map['status'] as String : null,
      createdAt: map['created_at'] != null
          ? DateTime.parse(map['created_at'] as String)
          : null,
      updatedAt: map['updated_at'] != null
          ? DateTime.parse(map['updated_at'] as String)
          : null,
    );
  }

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
