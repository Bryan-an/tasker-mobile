import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';
import 'package:tasker_mobile/src/utils/export.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final ITaskRepository taskRepository;

  TaskBloc({required this.taskRepository}) : super(const TaskState()) {
    on<GetTasks>(_mapGetTasksEventToState);
    on<UpdateTask>(_mapUpdateTaskEventToState);
    on<ReorderTaskList>(_mapReorderTaskListEventToState);
    on<AddTask>(_mapAddTaskEventToState);
    on<DeleteTask>(_mapDeleteTaskEventToState);
    on<ReplaceTask>(_mapReplaceTaskEventToState);
  }

  void _mapGetTasksEventToState(GetTasks event, Emitter<TaskState> emit) async {
    emit(state.copyWith(getTasksStatus: Status.loading));

    try {
      final tasks = await taskRepository.getAll(
        priority: event.priority,
        complexity: event.complexity,
        labels: event.labels,
        order: event.order,
      );

      emit(state.copyWith(
        tasks: tasks,
        getTasksStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(getTasksStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(getTasksStatus: Status.error));
    }

    emit(state.copyWith(getTasksStatus: Status.initial));
  }

  void _mapUpdateTaskEventToState(
      UpdateTask event, Emitter<TaskState> emit) async {
    emit(state.copyWith(updateTaskStatus: Status.loading));

    try {
      final updatedTasks = state.tasks
          .map((task) => (task.id == event.task.id) ? event.task : task)
          .toList();

      emit(state.copyWith(tasks: updatedTasks));
      await taskRepository.update(event.task.id!, event.task);

      emit(state.copyWith(
        updateTaskStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(updateTaskStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(updateTaskStatus: Status.error));
    }

    emit(state.copyWith(updateTaskStatus: Status.initial));
  }

  void _mapReplaceTaskEventToState(
      ReplaceTask event, Emitter<TaskState> emit) async {
    emit(state.copyWith(replaceTaskStatus: Status.loading));

    try {
      await taskRepository.replace(event.task.id!, event.task);
      add(const GetTasks());

      emit(state.copyWith(
        replaceTaskStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(replaceTaskStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(replaceTaskStatus: Status.error));
    }

    emit(state.copyWith(replaceTaskStatus: Status.initial));
  }

  void _mapAddTaskEventToState(AddTask event, Emitter<TaskState> emit) async {
    emit(state.copyWith(addTaskStatus: Status.loading));

    try {
      await taskRepository.insert(event.task);
      add(const GetTasks());

      emit(state.copyWith(
        addTaskStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(addTaskStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(addTaskStatus: Status.error));
    }

    emit(state.copyWith(addTaskStatus: Status.initial));
  }

  void _mapReorderTaskListEventToState(
      ReorderTaskList event, Emitter<TaskState> emit) {
    var oldIndex = event.oldIndex;
    var newIndex = event.newIndex;
    final taskList = List<Task>.from(state.tasks);

    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    final Task task = taskList.removeAt(oldIndex);
    taskList.insert(newIndex, task);
    emit(state.copyWith(tasks: taskList));
  }

  void _mapDeleteTaskEventToState(
      DeleteTask event, Emitter<TaskState> emit) async {
    emit(state.copyWith(deleteTaskStatus: Status.loading));

    try {
      final tasks = state.tasks.where((task) => task.id != event.id).toList();
      emit(state.copyWith(tasks: tasks));
      await taskRepository.delete(event.id);

      emit(state.copyWith(
        deleteTaskStatus: Status.success,
      ));
    } on DioError catch (e) {
      showDioErrors(e);
      emit(state.copyWith(deleteTaskStatus: Status.error));
    } catch (e) {
      showGeneralError(e);
      emit(state.copyWith(deleteTaskStatus: Status.error));
    }

    emit(state.copyWith(deleteTaskStatus: Status.initial));
  }
}
