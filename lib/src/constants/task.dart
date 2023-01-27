enum TaskLevel {
  low,
  medium,
  high,
}

enum TaskOrder {
  descending,
  ascending,
}

enum TaskDay {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

enum TaskDone {
  done,
  pending,
}

enum TaskReminder {
  remind,
  notRemind,
}

extension TaskLevelExtension on TaskLevel {
  String get toQueryParam {
    switch (this) {
      case TaskLevel.low:
        return 'low';
      case TaskLevel.medium:
        return 'medium';
      case TaskLevel.high:
        return 'high';
    }
  }

  String get toName {
    switch (this) {
      case TaskLevel.low:
        return 'low';
      case TaskLevel.medium:
        return 'medium';
      case TaskLevel.high:
        return 'high';
    }
  }

  double get toValue {
    switch (this) {
      case TaskLevel.high:
        return 100;
      case TaskLevel.medium:
        return 50;
      case TaskLevel.low:
        return 0;
    }
  }
}

extension TaskOrderExtension on TaskOrder {
  String get toQueryParam {
    switch (this) {
      case TaskOrder.ascending:
        return 'asc';
      case TaskOrder.descending:
        return 'des';
    }
  }

  String get toName {
    switch (this) {
      case TaskOrder.ascending:
        return 'Older first';
      case TaskOrder.descending:
        return 'Recent first';
    }
  }
}

extension TaskDayExtension on TaskDay {
  String get toShorName {
    switch (this) {
      case TaskDay.monday:
        return 'Mo';
      case TaskDay.tuesday:
        return 'Tu';
      case TaskDay.wednesday:
        return 'We';
      case TaskDay.thursday:
        return 'Th';
      case TaskDay.friday:
        return 'Fr';
      case TaskDay.saturday:
        return 'Sa';
      case TaskDay.sunday:
        return 'Su';
    }
  }
}

extension TaskDoneExtension on TaskDone {
  String get toQueryParam {
    switch (this) {
      case TaskDone.done:
        return 'true';
      case TaskDone.pending:
        return 'false';
    }
  }

  String get toName {
    switch (this) {
      case TaskDone.done:
        return 'done';
      case TaskDone.pending:
        return 'pending';
    }
  }
}

extension TaskReminderExtension on TaskReminder {
  String get toQueryParam {
    switch (this) {
      case TaskReminder.remind:
        return 'true';
      case TaskReminder.notRemind:
        return 'false';
    }
  }

  String get toName {
    switch (this) {
      case TaskReminder.remind:
        return 'remind';
      case TaskReminder.notRemind:
        return 'not remind';
    }
  }
}
