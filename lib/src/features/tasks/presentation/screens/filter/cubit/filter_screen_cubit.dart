import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'filter_screen_cubit.freezed.dart';
part 'filter_screen_state.dart';

class FilterScreenCubit extends Cubit<FilterScreenState> {
  final ITaskRepository taskRepository;

  FilterScreenCubit({required this.taskRepository})
      : super(const FilterScreenState());

  void searchTasks({
    TaskLevel? priority,
    TaskLevel? complexity,
    List<String>? labels,
    TaskOrder? order,
    TaskDone? done,
    TaskReminder? remind,
  }) async {
    emit(state.copyWith(searchStatus: Status.loading));

    try {
      final tasks = await taskRepository.getAll(
        priority: priority,
        complexity: complexity,
        labels: labels,
        order: order,
        done: done,
        remind: remind,
      );

      emit(state.copyWith(
        tasks: tasks,
        searchStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(searchStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(searchStatus: Status.error));
    }
  }
}
