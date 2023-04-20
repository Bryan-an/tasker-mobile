// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)
        getTasks,
    required TResult Function(Task task) updateTask,
    required TResult Function(Task task) replaceTask,
    required TResult Function(int oldIndex, int newIndex) reorderTaskList,
    required TResult Function(Task task) addTask,
    required TResult Function(String id) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult? Function(Task task)? updateTask,
    TResult? Function(Task task)? replaceTask,
    TResult? Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult? Function(Task task)? addTask,
    TResult? Function(String id)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult Function(Task task)? updateTask,
    TResult Function(Task task)? replaceTask,
    TResult Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult Function(Task task)? addTask,
    TResult Function(String id)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ReplaceTask value) replaceTask,
    required TResult Function(_ReorderTaskList value) reorderTaskList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ReplaceTask value)? replaceTask,
    TResult? Function(_ReorderTaskList value)? reorderTaskList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ReplaceTask value)? replaceTask,
    TResult Function(_ReorderTaskList value)? reorderTaskList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetTasksCopyWith<$Res> {
  factory _$$_GetTasksCopyWith(
          _$_GetTasks value, $Res Function(_$_GetTasks) then) =
      __$$_GetTasksCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TaskLevel? priority,
      TaskLevel? complexity,
      List<String>? labels,
      TaskOrder? order});
}

/// @nodoc
class __$$_GetTasksCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_GetTasks>
    implements _$$_GetTasksCopyWith<$Res> {
  __$$_GetTasksCopyWithImpl(
      _$_GetTasks _value, $Res Function(_$_GetTasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = freezed,
    Object? complexity = freezed,
    Object? labels = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_GetTasks(
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskLevel?,
      complexity: freezed == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as TaskLevel?,
      labels: freezed == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as TaskOrder?,
    ));
  }
}

/// @nodoc

class _$_GetTasks with DiagnosticableTreeMixin implements _GetTasks {
  const _$_GetTasks(
      {this.priority, this.complexity, final List<String>? labels, this.order})
      : _labels = labels;

  @override
  final TaskLevel? priority;
  @override
  final TaskLevel? complexity;
  final List<String>? _labels;
  @override
  List<String>? get labels {
    final value = _labels;
    if (value == null) return null;
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TaskOrder? order;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.getTasks(priority: $priority, complexity: $complexity, labels: $labels, order: $order)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.getTasks'))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('complexity', complexity))
      ..add(DiagnosticsProperty('labels', labels))
      ..add(DiagnosticsProperty('order', order));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTasks &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.complexity, complexity) ||
                other.complexity == complexity) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priority, complexity,
      const DeepCollectionEquality().hash(_labels), order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTasksCopyWith<_$_GetTasks> get copyWith =>
      __$$_GetTasksCopyWithImpl<_$_GetTasks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)
        getTasks,
    required TResult Function(Task task) updateTask,
    required TResult Function(Task task) replaceTask,
    required TResult Function(int oldIndex, int newIndex) reorderTaskList,
    required TResult Function(Task task) addTask,
    required TResult Function(String id) deleteTask,
  }) {
    return getTasks(priority, complexity, labels, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult? Function(Task task)? updateTask,
    TResult? Function(Task task)? replaceTask,
    TResult? Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult? Function(Task task)? addTask,
    TResult? Function(String id)? deleteTask,
  }) {
    return getTasks?.call(priority, complexity, labels, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult Function(Task task)? updateTask,
    TResult Function(Task task)? replaceTask,
    TResult Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult Function(Task task)? addTask,
    TResult Function(String id)? deleteTask,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(priority, complexity, labels, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ReplaceTask value) replaceTask,
    required TResult Function(_ReorderTaskList value) reorderTaskList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ReplaceTask value)? replaceTask,
    TResult? Function(_ReorderTaskList value)? reorderTaskList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ReplaceTask value)? replaceTask,
    TResult Function(_ReorderTaskList value)? reorderTaskList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks implements TaskEvent {
  const factory _GetTasks(
      {final TaskLevel? priority,
      final TaskLevel? complexity,
      final List<String>? labels,
      final TaskOrder? order}) = _$_GetTasks;

  TaskLevel? get priority;
  TaskLevel? get complexity;
  List<String>? get labels;
  TaskOrder? get order;
  @JsonKey(ignore: true)
  _$$_GetTasksCopyWith<_$_GetTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTaskCopyWith<$Res> {
  factory _$$_UpdateTaskCopyWith(
          _$_UpdateTask value, $Res Function(_$_UpdateTask) then) =
      __$$_UpdateTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_UpdateTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_UpdateTask>
    implements _$$_UpdateTaskCopyWith<$Res> {
  __$$_UpdateTaskCopyWithImpl(
      _$_UpdateTask _value, $Res Function(_$_UpdateTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_UpdateTask(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_UpdateTask with DiagnosticableTreeMixin implements _UpdateTask {
  const _$_UpdateTask({required this.task});

  @override
  final Task task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.updateTask(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.updateTask'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      __$$_UpdateTaskCopyWithImpl<_$_UpdateTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)
        getTasks,
    required TResult Function(Task task) updateTask,
    required TResult Function(Task task) replaceTask,
    required TResult Function(int oldIndex, int newIndex) reorderTaskList,
    required TResult Function(Task task) addTask,
    required TResult Function(String id) deleteTask,
  }) {
    return updateTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult? Function(Task task)? updateTask,
    TResult? Function(Task task)? replaceTask,
    TResult? Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult? Function(Task task)? addTask,
    TResult? Function(String id)? deleteTask,
  }) {
    return updateTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult Function(Task task)? updateTask,
    TResult Function(Task task)? replaceTask,
    TResult Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult Function(Task task)? addTask,
    TResult Function(String id)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ReplaceTask value) replaceTask,
    required TResult Function(_ReorderTaskList value) reorderTaskList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ReplaceTask value)? replaceTask,
    TResult? Function(_ReorderTaskList value)? reorderTaskList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ReplaceTask value)? replaceTask,
    TResult Function(_ReorderTaskList value)? reorderTaskList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask implements TaskEvent {
  const factory _UpdateTask({required final Task task}) = _$_UpdateTask;

  Task get task;
  @JsonKey(ignore: true)
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReplaceTaskCopyWith<$Res> {
  factory _$$_ReplaceTaskCopyWith(
          _$_ReplaceTask value, $Res Function(_$_ReplaceTask) then) =
      __$$_ReplaceTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_ReplaceTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_ReplaceTask>
    implements _$$_ReplaceTaskCopyWith<$Res> {
  __$$_ReplaceTaskCopyWithImpl(
      _$_ReplaceTask _value, $Res Function(_$_ReplaceTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_ReplaceTask(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_ReplaceTask with DiagnosticableTreeMixin implements _ReplaceTask {
  const _$_ReplaceTask({required this.task});

  @override
  final Task task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.replaceTask(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.replaceTask'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplaceTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplaceTaskCopyWith<_$_ReplaceTask> get copyWith =>
      __$$_ReplaceTaskCopyWithImpl<_$_ReplaceTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)
        getTasks,
    required TResult Function(Task task) updateTask,
    required TResult Function(Task task) replaceTask,
    required TResult Function(int oldIndex, int newIndex) reorderTaskList,
    required TResult Function(Task task) addTask,
    required TResult Function(String id) deleteTask,
  }) {
    return replaceTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult? Function(Task task)? updateTask,
    TResult? Function(Task task)? replaceTask,
    TResult? Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult? Function(Task task)? addTask,
    TResult? Function(String id)? deleteTask,
  }) {
    return replaceTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult Function(Task task)? updateTask,
    TResult Function(Task task)? replaceTask,
    TResult Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult Function(Task task)? addTask,
    TResult Function(String id)? deleteTask,
    required TResult orElse(),
  }) {
    if (replaceTask != null) {
      return replaceTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ReplaceTask value) replaceTask,
    required TResult Function(_ReorderTaskList value) reorderTaskList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return replaceTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ReplaceTask value)? replaceTask,
    TResult? Function(_ReorderTaskList value)? reorderTaskList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return replaceTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ReplaceTask value)? replaceTask,
    TResult Function(_ReorderTaskList value)? reorderTaskList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (replaceTask != null) {
      return replaceTask(this);
    }
    return orElse();
  }
}

abstract class _ReplaceTask implements TaskEvent {
  const factory _ReplaceTask({required final Task task}) = _$_ReplaceTask;

  Task get task;
  @JsonKey(ignore: true)
  _$$_ReplaceTaskCopyWith<_$_ReplaceTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReorderTaskListCopyWith<$Res> {
  factory _$$_ReorderTaskListCopyWith(
          _$_ReorderTaskList value, $Res Function(_$_ReorderTaskList) then) =
      __$$_ReorderTaskListCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$_ReorderTaskListCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_ReorderTaskList>
    implements _$$_ReorderTaskListCopyWith<$Res> {
  __$$_ReorderTaskListCopyWithImpl(
      _$_ReorderTaskList _value, $Res Function(_$_ReorderTaskList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$_ReorderTaskList(
      oldIndex: null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReorderTaskList
    with DiagnosticableTreeMixin
    implements _ReorderTaskList {
  const _$_ReorderTaskList({required this.oldIndex, required this.newIndex});

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.reorderTaskList(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.reorderTaskList'))
      ..add(DiagnosticsProperty('oldIndex', oldIndex))
      ..add(DiagnosticsProperty('newIndex', newIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReorderTaskList &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReorderTaskListCopyWith<_$_ReorderTaskList> get copyWith =>
      __$$_ReorderTaskListCopyWithImpl<_$_ReorderTaskList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)
        getTasks,
    required TResult Function(Task task) updateTask,
    required TResult Function(Task task) replaceTask,
    required TResult Function(int oldIndex, int newIndex) reorderTaskList,
    required TResult Function(Task task) addTask,
    required TResult Function(String id) deleteTask,
  }) {
    return reorderTaskList(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult? Function(Task task)? updateTask,
    TResult? Function(Task task)? replaceTask,
    TResult? Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult? Function(Task task)? addTask,
    TResult? Function(String id)? deleteTask,
  }) {
    return reorderTaskList?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult Function(Task task)? updateTask,
    TResult Function(Task task)? replaceTask,
    TResult Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult Function(Task task)? addTask,
    TResult Function(String id)? deleteTask,
    required TResult orElse(),
  }) {
    if (reorderTaskList != null) {
      return reorderTaskList(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ReplaceTask value) replaceTask,
    required TResult Function(_ReorderTaskList value) reorderTaskList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return reorderTaskList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ReplaceTask value)? replaceTask,
    TResult? Function(_ReorderTaskList value)? reorderTaskList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return reorderTaskList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ReplaceTask value)? replaceTask,
    TResult Function(_ReorderTaskList value)? reorderTaskList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (reorderTaskList != null) {
      return reorderTaskList(this);
    }
    return orElse();
  }
}

abstract class _ReorderTaskList implements TaskEvent {
  const factory _ReorderTaskList(
      {required final int oldIndex,
      required final int newIndex}) = _$_ReorderTaskList;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$_ReorderTaskListCopyWith<_$_ReorderTaskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTaskCopyWith<$Res> {
  factory _$$_AddTaskCopyWith(
          _$_AddTask value, $Res Function(_$_AddTask) then) =
      __$$_AddTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_AddTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_AddTask>
    implements _$$_AddTaskCopyWith<$Res> {
  __$$_AddTaskCopyWithImpl(_$_AddTask _value, $Res Function(_$_AddTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_AddTask(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$_AddTask with DiagnosticableTreeMixin implements _AddTask {
  const _$_AddTask({required this.task});

  @override
  final Task task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.addTask(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.addTask'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      __$$_AddTaskCopyWithImpl<_$_AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)
        getTasks,
    required TResult Function(Task task) updateTask,
    required TResult Function(Task task) replaceTask,
    required TResult Function(int oldIndex, int newIndex) reorderTaskList,
    required TResult Function(Task task) addTask,
    required TResult Function(String id) deleteTask,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult? Function(Task task)? updateTask,
    TResult? Function(Task task)? replaceTask,
    TResult? Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult? Function(Task task)? addTask,
    TResult? Function(String id)? deleteTask,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult Function(Task task)? updateTask,
    TResult Function(Task task)? replaceTask,
    TResult Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult Function(Task task)? addTask,
    TResult Function(String id)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ReplaceTask value) replaceTask,
    required TResult Function(_ReorderTaskList value) reorderTaskList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ReplaceTask value)? replaceTask,
    TResult? Function(_ReorderTaskList value)? reorderTaskList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ReplaceTask value)? replaceTask,
    TResult Function(_ReorderTaskList value)? reorderTaskList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements TaskEvent {
  const factory _AddTask({required final Task task}) = _$_AddTask;

  Task get task;
  @JsonKey(ignore: true)
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTaskCopyWith<$Res> {
  factory _$$_DeleteTaskCopyWith(
          _$_DeleteTask value, $Res Function(_$_DeleteTask) then) =
      __$$_DeleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeleteTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$_DeleteTask>
    implements _$$_DeleteTaskCopyWith<$Res> {
  __$$_DeleteTaskCopyWithImpl(
      _$_DeleteTask _value, $Res Function(_$_DeleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteTask(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteTask with DiagnosticableTreeMixin implements _DeleteTask {
  const _$_DeleteTask({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEvent.deleteTask(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEvent.deleteTask'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTask &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      __$$_DeleteTaskCopyWithImpl<_$_DeleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)
        getTasks,
    required TResult Function(Task task) updateTask,
    required TResult Function(Task task) replaceTask,
    required TResult Function(int oldIndex, int newIndex) reorderTaskList,
    required TResult Function(Task task) addTask,
    required TResult Function(String id) deleteTask,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult? Function(Task task)? updateTask,
    TResult? Function(Task task)? replaceTask,
    TResult? Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult? Function(Task task)? addTask,
    TResult? Function(String id)? deleteTask,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TaskLevel? priority, TaskLevel? complexity,
            List<String>? labels, TaskOrder? order)?
        getTasks,
    TResult Function(Task task)? updateTask,
    TResult Function(Task task)? replaceTask,
    TResult Function(int oldIndex, int newIndex)? reorderTaskList,
    TResult Function(Task task)? addTask,
    TResult Function(String id)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ReplaceTask value) replaceTask,
    required TResult Function(_ReorderTaskList value) reorderTaskList,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_DeleteTask value) deleteTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ReplaceTask value)? replaceTask,
    TResult? Function(_ReorderTaskList value)? reorderTaskList,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_DeleteTask value)? deleteTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ReplaceTask value)? replaceTask,
    TResult Function(_ReorderTaskList value)? reorderTaskList,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_DeleteTask value)? deleteTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TaskEvent {
  const factory _DeleteTask({required final String id}) = _$_DeleteTask;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  Status get getTasksStatus => throw _privateConstructorUsedError;
  Status get updateTaskStatus => throw _privateConstructorUsedError;
  Status get addTaskStatus => throw _privateConstructorUsedError;
  Status get deleteTaskStatus => throw _privateConstructorUsedError;
  Status get replaceTaskStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {List<Task> tasks,
      Status getTasksStatus,
      Status updateTaskStatus,
      Status addTaskStatus,
      Status deleteTaskStatus,
      Status replaceTaskStatus});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? getTasksStatus = null,
    Object? updateTaskStatus = null,
    Object? addTaskStatus = null,
    Object? deleteTaskStatus = null,
    Object? replaceTaskStatus = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      getTasksStatus: null == getTasksStatus
          ? _value.getTasksStatus
          : getTasksStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateTaskStatus: null == updateTaskStatus
          ? _value.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      deleteTaskStatus: null == deleteTaskStatus
          ? _value.deleteTaskStatus
          : deleteTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      replaceTaskStatus: null == replaceTaskStatus
          ? _value.replaceTaskStatus
          : replaceTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskStateCopyWith(
          _$_TaskState value, $Res Function(_$_TaskState) then) =
      __$$_TaskStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Task> tasks,
      Status getTasksStatus,
      Status updateTaskStatus,
      Status addTaskStatus,
      Status deleteTaskStatus,
      Status replaceTaskStatus});
}

/// @nodoc
class __$$_TaskStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_TaskState>
    implements _$$_TaskStateCopyWith<$Res> {
  __$$_TaskStateCopyWithImpl(
      _$_TaskState _value, $Res Function(_$_TaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? getTasksStatus = null,
    Object? updateTaskStatus = null,
    Object? addTaskStatus = null,
    Object? deleteTaskStatus = null,
    Object? replaceTaskStatus = null,
  }) {
    return _then(_$_TaskState(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      getTasksStatus: null == getTasksStatus
          ? _value.getTasksStatus
          : getTasksStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateTaskStatus: null == updateTaskStatus
          ? _value.updateTaskStatus
          : updateTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      addTaskStatus: null == addTaskStatus
          ? _value.addTaskStatus
          : addTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      deleteTaskStatus: null == deleteTaskStatus
          ? _value.deleteTaskStatus
          : deleteTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      replaceTaskStatus: null == replaceTaskStatus
          ? _value.replaceTaskStatus
          : replaceTaskStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_TaskState with DiagnosticableTreeMixin implements _TaskState {
  const _$_TaskState(
      {final List<Task> tasks = const [],
      this.getTasksStatus = Status.initial,
      this.updateTaskStatus = Status.initial,
      this.addTaskStatus = Status.initial,
      this.deleteTaskStatus = Status.initial,
      this.replaceTaskStatus = Status.initial})
      : _tasks = tasks;

  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final Status getTasksStatus;
  @override
  @JsonKey()
  final Status updateTaskStatus;
  @override
  @JsonKey()
  final Status addTaskStatus;
  @override
  @JsonKey()
  final Status deleteTaskStatus;
  @override
  @JsonKey()
  final Status replaceTaskStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskState(tasks: $tasks, getTasksStatus: $getTasksStatus, updateTaskStatus: $updateTaskStatus, addTaskStatus: $addTaskStatus, deleteTaskStatus: $deleteTaskStatus, replaceTaskStatus: $replaceTaskStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskState'))
      ..add(DiagnosticsProperty('tasks', tasks))
      ..add(DiagnosticsProperty('getTasksStatus', getTasksStatus))
      ..add(DiagnosticsProperty('updateTaskStatus', updateTaskStatus))
      ..add(DiagnosticsProperty('addTaskStatus', addTaskStatus))
      ..add(DiagnosticsProperty('deleteTaskStatus', deleteTaskStatus))
      ..add(DiagnosticsProperty('replaceTaskStatus', replaceTaskStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.getTasksStatus, getTasksStatus) ||
                other.getTasksStatus == getTasksStatus) &&
            (identical(other.updateTaskStatus, updateTaskStatus) ||
                other.updateTaskStatus == updateTaskStatus) &&
            (identical(other.addTaskStatus, addTaskStatus) ||
                other.addTaskStatus == addTaskStatus) &&
            (identical(other.deleteTaskStatus, deleteTaskStatus) ||
                other.deleteTaskStatus == deleteTaskStatus) &&
            (identical(other.replaceTaskStatus, replaceTaskStatus) ||
                other.replaceTaskStatus == replaceTaskStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      getTasksStatus,
      updateTaskStatus,
      addTaskStatus,
      deleteTaskStatus,
      replaceTaskStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      __$$_TaskStateCopyWithImpl<_$_TaskState>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {final List<Task> tasks,
      final Status getTasksStatus,
      final Status updateTaskStatus,
      final Status addTaskStatus,
      final Status deleteTaskStatus,
      final Status replaceTaskStatus}) = _$_TaskState;

  @override
  List<Task> get tasks;
  @override
  Status get getTasksStatus;
  @override
  Status get updateTaskStatus;
  @override
  Status get addTaskStatus;
  @override
  Status get deleteTaskStatus;
  @override
  Status get replaceTaskStatus;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
