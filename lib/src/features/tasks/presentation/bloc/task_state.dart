// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default([]) List<Task> tasks,
    @Default(Status.initial) Status getTasksStatus,
    @Default(Status.initial) Status updateTaskStatus,
    @Default(Status.initial) Status addTaskStatus,
    @Default(Status.initial) Status deleteTaskStatus,
    @Default(Status.initial) Status replaceTaskStatus,
  }) = _TaskState;
}
