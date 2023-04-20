part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.getTasks({
    TaskLevel? priority,
    TaskLevel? complexity,
    List<String>? labels,
    TaskOrder? order,
  }) = _GetTasks;

  const factory TaskEvent.updateTask({required Task task}) = _UpdateTask;

  const factory TaskEvent.replaceTask({required Task task}) = _ReplaceTask;

  const factory TaskEvent.reorderTaskList({
    required int oldIndex,
    required int newIndex,
  }) = _ReorderTaskList;

  const factory TaskEvent.addTask({required Task task}) = _AddTask;

  const factory TaskEvent.deleteTask({required String id}) = _DeleteTask;
}
