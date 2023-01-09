import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';

abstract class ITaskRepository {
  Future<List<Task>> getAll({
    TaskLevel? priority,
    TaskLevel? complexity,
    List<String>? labels,
    TaskOrder? order,
  });

  Future<Task> getOne(String id);

  Future<void> insert(Task task);

  Future<void> update(String id, Task task);

  Future<void> replace(String id, Task task);

  Future<void> delete(String id);
}
