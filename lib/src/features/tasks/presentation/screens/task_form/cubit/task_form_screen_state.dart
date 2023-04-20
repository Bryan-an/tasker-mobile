part of 'task_form_screen_cubit.dart';

@freezed
class TaskFormScreenState with _$TaskFormScreenState {
  const factory TaskFormScreenState({
    @Default(TaskLevel.medium) TaskLevel priority,
    @Default(TaskLevel.medium) TaskLevel complexity,
    @Default([]) List<String> labels,
    required DateTime date,
    @Default(false) bool includeTime,
    required DateTime from,
    required DateTime to,
    @Default(false) bool remind,
  }) = _TaskFormScreenState;
}
