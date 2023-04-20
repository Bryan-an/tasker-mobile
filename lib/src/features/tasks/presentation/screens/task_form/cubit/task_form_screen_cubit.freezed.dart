// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_form_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskFormScreenState {
  TaskLevel get priority => throw _privateConstructorUsedError;
  TaskLevel get complexity => throw _privateConstructorUsedError;
  List<String> get labels => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get includeTime => throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;
  bool get remind => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormScreenStateCopyWith<TaskFormScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormScreenStateCopyWith<$Res> {
  factory $TaskFormScreenStateCopyWith(
          TaskFormScreenState value, $Res Function(TaskFormScreenState) then) =
      _$TaskFormScreenStateCopyWithImpl<$Res, TaskFormScreenState>;
  @useResult
  $Res call(
      {TaskLevel priority,
      TaskLevel complexity,
      List<String> labels,
      DateTime date,
      bool includeTime,
      DateTime from,
      DateTime to,
      bool remind});
}

/// @nodoc
class _$TaskFormScreenStateCopyWithImpl<$Res, $Val extends TaskFormScreenState>
    implements $TaskFormScreenStateCopyWith<$Res> {
  _$TaskFormScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = null,
    Object? complexity = null,
    Object? labels = null,
    Object? date = null,
    Object? includeTime = null,
    Object? from = null,
    Object? to = null,
    Object? remind = null,
  }) {
    return _then(_value.copyWith(
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskLevel,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as TaskLevel,
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      includeTime: null == includeTime
          ? _value.includeTime
          : includeTime // ignore: cast_nullable_to_non_nullable
              as bool,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remind: null == remind
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskFormScreenStateCopyWith<$Res>
    implements $TaskFormScreenStateCopyWith<$Res> {
  factory _$$_TaskFormScreenStateCopyWith(_$_TaskFormScreenState value,
          $Res Function(_$_TaskFormScreenState) then) =
      __$$_TaskFormScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TaskLevel priority,
      TaskLevel complexity,
      List<String> labels,
      DateTime date,
      bool includeTime,
      DateTime from,
      DateTime to,
      bool remind});
}

/// @nodoc
class __$$_TaskFormScreenStateCopyWithImpl<$Res>
    extends _$TaskFormScreenStateCopyWithImpl<$Res, _$_TaskFormScreenState>
    implements _$$_TaskFormScreenStateCopyWith<$Res> {
  __$$_TaskFormScreenStateCopyWithImpl(_$_TaskFormScreenState _value,
      $Res Function(_$_TaskFormScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priority = null,
    Object? complexity = null,
    Object? labels = null,
    Object? date = null,
    Object? includeTime = null,
    Object? from = null,
    Object? to = null,
    Object? remind = null,
  }) {
    return _then(_$_TaskFormScreenState(
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as TaskLevel,
      complexity: null == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as TaskLevel,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      includeTime: null == includeTime
          ? _value.includeTime
          : includeTime // ignore: cast_nullable_to_non_nullable
              as bool,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remind: null == remind
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TaskFormScreenState
    with DiagnosticableTreeMixin
    implements _TaskFormScreenState {
  const _$_TaskFormScreenState(
      {this.priority = TaskLevel.medium,
      this.complexity = TaskLevel.medium,
      final List<String> labels = const [],
      required this.date,
      this.includeTime = false,
      required this.from,
      required this.to,
      this.remind = false})
      : _labels = labels;

  @override
  @JsonKey()
  final TaskLevel priority;
  @override
  @JsonKey()
  final TaskLevel complexity;
  final List<String> _labels;
  @override
  @JsonKey()
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  final DateTime date;
  @override
  @JsonKey()
  final bool includeTime;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  @JsonKey()
  final bool remind;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskFormScreenState(priority: $priority, complexity: $complexity, labels: $labels, date: $date, includeTime: $includeTime, from: $from, to: $to, remind: $remind)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskFormScreenState'))
      ..add(DiagnosticsProperty('priority', priority))
      ..add(DiagnosticsProperty('complexity', complexity))
      ..add(DiagnosticsProperty('labels', labels))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('includeTime', includeTime))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('remind', remind));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskFormScreenState &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.complexity, complexity) ||
                other.complexity == complexity) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.includeTime, includeTime) ||
                other.includeTime == includeTime) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.remind, remind) || other.remind == remind));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      priority,
      complexity,
      const DeepCollectionEquality().hash(_labels),
      date,
      includeTime,
      from,
      to,
      remind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskFormScreenStateCopyWith<_$_TaskFormScreenState> get copyWith =>
      __$$_TaskFormScreenStateCopyWithImpl<_$_TaskFormScreenState>(
          this, _$identity);
}

abstract class _TaskFormScreenState implements TaskFormScreenState {
  const factory _TaskFormScreenState(
      {final TaskLevel priority,
      final TaskLevel complexity,
      final List<String> labels,
      required final DateTime date,
      final bool includeTime,
      required final DateTime from,
      required final DateTime to,
      final bool remind}) = _$_TaskFormScreenState;

  @override
  TaskLevel get priority;
  @override
  TaskLevel get complexity;
  @override
  List<String> get labels;
  @override
  DateTime get date;
  @override
  bool get includeTime;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  bool get remind;
  @override
  @JsonKey(ignore: true)
  _$$_TaskFormScreenStateCopyWith<_$_TaskFormScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
