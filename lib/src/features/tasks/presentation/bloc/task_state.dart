// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

class TaskState extends Equatable {
  final List<Task> tasks;
  final Status getTasksStatus;
  final Status updateTaskStatus;
  final Status addTaskStatus;
  final Status deleteTaskStatus;
  final Status replaceTaskStatus;

  const TaskState({
    this.tasks = const [],
    this.getTasksStatus = Status.initial,
    this.updateTaskStatus = Status.initial,
    this.addTaskStatus = Status.initial,
    this.deleteTaskStatus = Status.initial,
    this.replaceTaskStatus = Status.initial,
  });

  @override
  List<Object> get props => [
        tasks,
        getTasksStatus,
        updateTaskStatus,
        addTaskStatus,
        deleteTaskStatus,
        replaceTaskStatus,
      ];

  TaskState copyWith({
    List<Task>? tasks,
    Status? getTasksStatus,
    Status? updateTaskStatus,
    Status? addTaskStatus,
    Status? deleteTaskStatus,
    Status? replaceTaskStatus,
  }) {
    return TaskState(
      tasks: tasks ?? this.tasks,
      getTasksStatus: getTasksStatus ?? this.getTasksStatus,
      updateTaskStatus: updateTaskStatus ?? this.updateTaskStatus,
      addTaskStatus: addTaskStatus ?? this.addTaskStatus,
      deleteTaskStatus: deleteTaskStatus ?? this.deleteTaskStatus,
      replaceTaskStatus: replaceTaskStatus ?? this.replaceTaskStatus,
    );
  }

  @override
  bool get stringify => true;
}
