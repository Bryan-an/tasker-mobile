import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';

part 'task_form_screen_state.dart';

class TaskFormScreenCubit extends Cubit<TaskFormScreenState> {
  TaskFormScreenCubit()
      : super(
          TaskFormScreenState(
            date: DateTime.now(),
            from: DateTime.now(),
            to: DateTime.now(),
          ),
        );

  void setPriority(double priority) {
    if (priority == TaskLevel.high.toValue) {
      emit(state.copyWith(priority: TaskLevel.high));
    } else if (priority == TaskLevel.medium.toValue) {
      emit(state.copyWith(priority: TaskLevel.medium));
    } else if (priority == TaskLevel.low.toValue) {
      emit(state.copyWith(priority: TaskLevel.low));
    }
  }

  void setComplexity(double complexity) {
    if (complexity == TaskLevel.high.toValue) {
      emit(state.copyWith(complexity: TaskLevel.high));
    } else if (complexity == TaskLevel.medium.toValue) {
      emit(state.copyWith(complexity: TaskLevel.medium));
    } else if (complexity == TaskLevel.low.toValue) {
      emit(state.copyWith(complexity: TaskLevel.low));
    }
  }

  void addLabel(String label) {
    final labels = List<String>.from(state.labels);
    labels.add(label);
    emit(state.copyWith(labels: labels));
  }

  void removeLabel(int index) {
    final labels = List<String>.from(state.labels);
    labels.removeAt(index);
    emit(state.copyWith(labels: labels));
  }

  void setDate(DateTime date) => emit(state.copyWith(date: date));

  void setIncludeTime(bool includeTime) =>
      emit(state.copyWith(includeTime: includeTime));

  void setFrom(DateTime from) => emit(state.copyWith(from: from));

  void setTo(DateTime to) => emit(state.copyWith(to: to));

  void setRemind(bool remind) => emit(state.copyWith(remind: remind));
}
