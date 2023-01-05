enum TaskLevel {
  low,
  medium,
  high,
}

enum TaskOrder {
  ascending,
  descending,
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
}
