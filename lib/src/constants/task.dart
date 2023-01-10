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
