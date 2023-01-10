// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'filter_screen_cubit.dart';

class FilterScreenState extends Equatable {
  final List<Task> tasks;
  final Status searchStatus;

  const FilterScreenState({
    this.tasks = const [],
    this.searchStatus = Status.initial,
  });

  @override
  List<Object> get props => [tasks, searchStatus];

  FilterScreenState copyWith({
    List<Task>? tasks,
    Status? searchStatus,
  }) {
    return FilterScreenState(
      tasks: tasks ?? this.tasks,
      searchStatus: searchStatus ?? this.searchStatus,
    );
  }
}
