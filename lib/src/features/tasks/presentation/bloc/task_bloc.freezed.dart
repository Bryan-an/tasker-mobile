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
abstract class _$$GetTasksImplCopyWith<$Res> {
  factory _$$GetTasksImplCopyWith(
          _$GetTasksImpl value, $Res Function(_$GetTasksImpl) then) =
      __$$GetTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TaskLevel? priority,
      TaskLevel? complexity,
      List<String>? labels,
      TaskOrder? order});
}

/// @nodoc
class __$$GetTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTasksImpl>
    implements _$$GetTasksImplCopyWith<$Res> {
  __$$GetTasksImplCopyWithImpl(
      _$GetTasksImpl _value, $Res Function(_$GetTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = freezed,
    Object? complexity = freezed,
    Object? labels = freezed,
    Object? order = freezed,
  }) {
    return _then(_$GetTasksImpl(
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

class _$GetTasksImpl with DiagnosticableTreeMixin implements _GetTasks {
  const _$GetTasksImpl(
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
            other is _$GetTasksImpl &&
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
  _$$GetTasksImplCopyWith<_$GetTasksImpl> get copyWith =>
      __$$GetTasksImplCopyWithImpl<_$GetTasksImpl>(this, _$identity);

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
      final TaskOrder? order}) = _$GetTasksImpl;

  TaskLevel? get priority;
  TaskLevel? get complexity;
  List<String>? get labels;
  TaskOrder? get order;
  @JsonKey(ignore: true)
  _$$GetTasksImplCopyWith<_$GetTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskImplCopyWith<$Res> {
  factory _$$UpdateTaskImplCopyWith(
          _$UpdateTaskImpl value, $Res Function(_$UpdateTaskImpl) then) =
      __$$UpdateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$UpdateTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskImpl>
    implements _$$UpdateTaskImplCopyWith<$Res> {
  __$$UpdateTaskImplCopyWithImpl(
      _$UpdateTaskImpl _value, $Res Function(_$UpdateTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$UpdateTaskImpl(
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

class _$UpdateTaskImpl with DiagnosticableTreeMixin implements _UpdateTask {
  const _$UpdateTaskImpl({required this.task});

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
            other is _$UpdateTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      __$$UpdateTaskImplCopyWithImpl<_$UpdateTaskImpl>(this, _$identity);

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
  const factory _UpdateTask({required final Task task}) = _$UpdateTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplaceTaskImplCopyWith<$Res> {
  factory _$$ReplaceTaskImplCopyWith(
          _$ReplaceTaskImpl value, $Res Function(_$ReplaceTaskImpl) then) =
      __$$ReplaceTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$ReplaceTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReplaceTaskImpl>
    implements _$$ReplaceTaskImplCopyWith<$Res> {
  __$$ReplaceTaskImplCopyWithImpl(
      _$ReplaceTaskImpl _value, $Res Function(_$ReplaceTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$ReplaceTaskImpl(
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

class _$ReplaceTaskImpl with DiagnosticableTreeMixin implements _ReplaceTask {
  const _$ReplaceTaskImpl({required this.task});

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
            other is _$ReplaceTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplaceTaskImplCopyWith<_$ReplaceTaskImpl> get copyWith =>
      __$$ReplaceTaskImplCopyWithImpl<_$ReplaceTaskImpl>(this, _$identity);

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
  const factory _ReplaceTask({required final Task task}) = _$ReplaceTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$ReplaceTaskImplCopyWith<_$ReplaceTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReorderTaskListImplCopyWith<$Res> {
  factory _$$ReorderTaskListImplCopyWith(_$ReorderTaskListImpl value,
          $Res Function(_$ReorderTaskListImpl) then) =
      __$$ReorderTaskListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$ReorderTaskListImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReorderTaskListImpl>
    implements _$$ReorderTaskListImplCopyWith<$Res> {
  __$$ReorderTaskListImplCopyWithImpl(
      _$ReorderTaskListImpl _value, $Res Function(_$ReorderTaskListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$ReorderTaskListImpl(
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

class _$ReorderTaskListImpl
    with DiagnosticableTreeMixin
    implements _ReorderTaskList {
  const _$ReorderTaskListImpl({required this.oldIndex, required this.newIndex});

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
            other is _$ReorderTaskListImpl &&
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
  _$$ReorderTaskListImplCopyWith<_$ReorderTaskListImpl> get copyWith =>
      __$$ReorderTaskListImplCopyWithImpl<_$ReorderTaskListImpl>(
          this, _$identity);

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
      required final int newIndex}) = _$ReorderTaskListImpl;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$ReorderTaskListImplCopyWith<_$ReorderTaskListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskImpl(
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

class _$AddTaskImpl with DiagnosticableTreeMixin implements _AddTask {
  const _$AddTaskImpl({required this.task});

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
            other is _$AddTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

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
  const factory _AddTask({required final Task task}) = _$AddTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl with DiagnosticableTreeMixin implements _DeleteTask {
  const _$DeleteTaskImpl({required this.id});

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
            other is _$DeleteTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

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
  const factory _DeleteTask({required final String id}) = _$DeleteTaskImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
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
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
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
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
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
    return _then(_$TaskStateImpl(
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

class _$TaskStateImpl with DiagnosticableTreeMixin implements _TaskState {
  const _$TaskStateImpl(
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
            other is _$TaskStateImpl &&
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
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {final List<Task> tasks,
      final Status getTasksStatus,
      final Status updateTaskStatus,
      final Status addTaskStatus,
      final Status deleteTaskStatus,
      final Status replaceTaskStatus}) = _$TaskStateImpl;

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
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
