import 'dart:collection';

import 'package:intl/intl.dart';
import 'package:tasker_mobile/src/constants/export.dart';
import 'package:tasker_mobile/src/features/tasks/export.dart';

Map<TaskDay, DateTime> getCurrentWeekdays() {
  const oneDay = Duration(days: 1);
  final now = DateTime.now();
  final monday = now.subtract(Duration(days: now.weekday - 1));
  final tuesday = monday.add(oneDay);
  final wednesday = tuesday.add(oneDay);
  final thursday = wednesday.add(oneDay);
  final friday = thursday.add(oneDay);
  final saturday = friday.add(oneDay);
  final sunday = saturday.add(oneDay);

  return {
    TaskDay.monday: monday,
    TaskDay.tuesday: tuesday,
    TaskDay.wednesday: wednesday,
    TaskDay.thursday: thursday,
    TaskDay.friday: friday,
    TaskDay.saturday: saturday,
    TaskDay.sunday: sunday,
  };
}

Map<DateTime, List<Task>> clasifyTasksByFromTime(List<Task> tasks) {
  SplayTreeMap<DateTime, List<Task>> tasksByFrom = SplayTreeMap();

  for (final task in tasks) {
    var from = task.from;

    if (from != null) {
      bool exists = true;

      final key = tasksByFrom.keys.toList().firstWhere((key) {
        final keyHm = DateFormat.Hm().format(key);
        final fromHm = DateFormat.Hm().format(from);

        return keyHm == fromHm;
      }, orElse: () {
        exists = false;
        return DateTime.now();
      });

      if (exists) {
        tasksByFrom[key]?.add(task);
      } else {
        tasksByFrom[from] = [task];
      }
    }
  }

  return tasksByFrom;
}
