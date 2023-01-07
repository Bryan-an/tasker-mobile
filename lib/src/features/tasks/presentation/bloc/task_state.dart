// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

class TaskState extends Equatable {
  final List<Task> tasks;
  final Status getTasksStatus;
  final Status updateTaskStatus;

  const TaskState({
    this.tasks = const [],
    this.getTasksStatus = Status.initial,
    this.updateTaskStatus = Status.initial,
  });

  @override
  List<Object> get props => [
        tasks,
        getTasksStatus,
        updateTaskStatus,
      ];

  TaskState copyWith({
    List<Task>? tasks,
    Status? getTasksStatus,
    Status? updateTaskStatus,
  }) {
    return TaskState(
      tasks: tasks ?? this.tasks,
      getTasksStatus: getTasksStatus ?? this.getTasksStatus,
      updateTaskStatus: updateTaskStatus ?? this.updateTaskStatus,
    );
  }

  @override
  bool get stringify => true;
}
