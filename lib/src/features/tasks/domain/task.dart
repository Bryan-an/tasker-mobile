import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String? id;
  final String? userId;
  final String? title;
  final String? description;
  final List<String>? labels;
  final String? priority;
  final String? complexity;
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
          ? List<String>.from(map['labels'] as List<String>)
          : null,
      priority: map['priority'] != null ? map['priority'] as String : null,
      complexity:
          map['complexity'] != null ? map['complexity'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      createdAt: map['created_at'] != null
          ? DateTime.parse(map['created_at'] as String)
          : null,
      updatedAt: map['updated_at'] != null
          ? DateTime.parse(map['updated_at'] as String)
          : null,
    );
  }
}
