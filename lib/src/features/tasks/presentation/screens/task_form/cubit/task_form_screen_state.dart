// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_form_screen_cubit.dart';

class TaskFormScreenState extends Equatable {
  final TaskLevel priority;
  final TaskLevel complexity;
  final List<String> labels;

  const TaskFormScreenState({
    this.priority = TaskLevel.medium,
    this.complexity = TaskLevel.medium,
    this.labels = const [],
  });

  @override
  List<Object> get props => [priority, complexity, labels];

  TaskFormScreenState copyWith({
    TaskLevel? priority,
    TaskLevel? complexity,
    List<String>? labels,
  }) {
    return TaskFormScreenState(
      priority: priority ?? this.priority,
      complexity: complexity ?? this.complexity,
      labels: labels ?? this.labels,
    );
  }

  @override
  bool get stringify => true;
}
