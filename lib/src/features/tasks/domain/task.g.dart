// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      labels:
          (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
      priority: json['priority'] as String?,
      complexity: json['complexity'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      from:
          json['from'] == null ? null : DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
      done: json['done'] as bool?,
      remind: json['remind'] as bool?,
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'description': instance.description,
      'labels': instance.labels,
      'priority': instance.priority,
      'complexity': instance.complexity,
      'date': instance.date?.toIso8601String(),
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
      'done': instance.done,
      'remind': instance.remind,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
