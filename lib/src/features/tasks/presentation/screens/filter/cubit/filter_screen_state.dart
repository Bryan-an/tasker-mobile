part of 'filter_screen_cubit.dart';

@freezed
class FilterScreenState with _$FilterScreenState {
  const factory FilterScreenState({
    @Default([]) List<Task> tasks,
    @Default(Status.initial) Status searchStatus,
  }) = _FilterScreenState;
}
