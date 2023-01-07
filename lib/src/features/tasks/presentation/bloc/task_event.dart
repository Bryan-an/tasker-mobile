part of 'task_bloc.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class GetTasks extends TaskEvent {
  final TaskLevel? priority;
  final TaskLevel? complexity;
  final List<String>? labels;
  final TaskOrder? order;

  const GetTasks({
    this.priority,
    this.complexity,
    this.labels,
    this.order,
  });

  @override
  List<Object> get props => [];
}

class UpdateTask extends TaskEvent {
  final Task task;

  const UpdateTask(this.task);

  @override
  List<Object> get props => [task];
}

class ReorderTaskList extends TaskEvent {
  final int oldIndex;
  final int newIndex;

  const ReorderTaskList({
    required this.oldIndex,
    required this.newIndex,
  });

  @override
  List<Object> get props => [oldIndex, newIndex];
}
