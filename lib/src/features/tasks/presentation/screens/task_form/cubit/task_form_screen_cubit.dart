import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';

part 'task_form_screen_state.dart';

class TaskFormScreenCubit extends Cubit<TaskFormScreenState> {
  TaskFormScreenCubit() : super(const TaskFormScreenState());

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
}
