// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_form_screen_cubit.dart';

class TaskFormScreenState extends Equatable {
  final TaskLevel priority;
  final TaskLevel complexity;
  final List<String> labels;
  final DateTime date;
  final bool includeTime;
  final DateTime from;
  final DateTime to;
  final bool remind;

  const TaskFormScreenState({
    this.priority = TaskLevel.medium,
    this.complexity = TaskLevel.medium,
    this.labels = const [],
    required this.date,
    this.includeTime = false,
    required this.from,
    required this.to,
    this.remind = false,
  });

  @override
  List<Object> get props => [
        priority,
        complexity,
        labels,
        date,
        includeTime,
        from,
        to,
        remind,
      ];

  TaskFormScreenState copyWith({
    TaskLevel? priority,
    TaskLevel? complexity,
    List<String>? labels,
    DateTime? date,
    bool? includeTime,
    DateTime? from,
    DateTime? to,
    bool? remind,
  }) {
    return TaskFormScreenState(
      priority: priority ?? this.priority,
      complexity: complexity ?? this.complexity,
      labels: labels ?? this.labels,
      date: date ?? this.date,
      includeTime: includeTime ?? this.includeTime,
      from: from ?? this.from,
      to: to ?? this.to,
      remind: remind ?? this.remind,
    );
  }

  @override
  bool get stringify => true;
}
