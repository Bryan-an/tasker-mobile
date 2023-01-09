import 'package:tasker_mobile/src/constants/task.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';

class TaskRepository implements ITaskRepository {
  final TaskService _service;

  TaskRepository({TaskService? service}) : _service = service ?? TaskService();

  @override
  Future<List<Task>> getAll(
      {TaskLevel? priority,
      TaskLevel? complexity,
      List<String>? labels,
      TaskOrder? order}) async {
    Map<String, dynamic> queryParams = {};

    if (priority != null) {
      queryParams['priority'] = priority.toQueryParam;
    }

    if (complexity != null) {
      queryParams['complexity'] = complexity.toQueryParam;
    }

    if (labels != null) {
      queryParams['labels'] = labels.join(',');
    }

    if (order != null) {
      queryParams['order'] = order.toQueryParam;
    }

    final tasks = await _service.list(queryParams);
    return tasks.map((task) => Task.fromJson(task)).toList();
  }

  @override
  Future<Task> getOne(String id) async {
    final task = await _service.findOne(id);
    return Task.fromJson(task);
  }

  @override
  Future<void> delete(String id) async {
    await _service.delete(id);
  }

  @override
  Future<void> insert(Task task) async {
    await _service.insert(task.toJson());
  }

  @override
  Future<void> update(String id, Task task) async {
    await _service.update(id, task.toJson());
  }

  @override
  Future<void> replace(String id, Task task) async {
    await _service.replace(id, task.toJson());
  }
}
