// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterScreenState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  Status get searchStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterScreenStateCopyWith<FilterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterScreenStateCopyWith<$Res> {
  factory $FilterScreenStateCopyWith(
          FilterScreenState value, $Res Function(FilterScreenState) then) =
      _$FilterScreenStateCopyWithImpl<$Res, FilterScreenState>;
  @useResult
  $Res call({List<Task> tasks, Status searchStatus});
}

/// @nodoc
class _$FilterScreenStateCopyWithImpl<$Res, $Val extends FilterScreenState>
    implements $FilterScreenStateCopyWith<$Res> {
  _$FilterScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? searchStatus = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterScreenStateCopyWith<$Res>
    implements $FilterScreenStateCopyWith<$Res> {
  factory _$$_FilterScreenStateCopyWith(_$_FilterScreenState value,
          $Res Function(_$_FilterScreenState) then) =
      __$$_FilterScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks, Status searchStatus});
}

/// @nodoc
class __$$_FilterScreenStateCopyWithImpl<$Res>
    extends _$FilterScreenStateCopyWithImpl<$Res, _$_FilterScreenState>
    implements _$$_FilterScreenStateCopyWith<$Res> {
  __$$_FilterScreenStateCopyWithImpl(
      _$_FilterScreenState _value, $Res Function(_$_FilterScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? searchStatus = null,
  }) {
    return _then(_$_FilterScreenState(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_FilterScreenState
    with DiagnosticableTreeMixin
    implements _FilterScreenState {
  const _$_FilterScreenState(
      {final List<Task> tasks = const [], this.searchStatus = Status.initial})
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
  final Status searchStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterScreenState(tasks: $tasks, searchStatus: $searchStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterScreenState'))
      ..add(DiagnosticsProperty('tasks', tasks))
      ..add(DiagnosticsProperty('searchStatus', searchStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterScreenState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.searchStatus, searchStatus) ||
                other.searchStatus == searchStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), searchStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterScreenStateCopyWith<_$_FilterScreenState> get copyWith =>
      __$$_FilterScreenStateCopyWithImpl<_$_FilterScreenState>(
          this, _$identity);
}

abstract class _FilterScreenState implements FilterScreenState {
  const factory _FilterScreenState(
      {final List<Task> tasks,
      final Status searchStatus}) = _$_FilterScreenState;

  @override
  List<Task> get tasks;
  @override
  Status get searchStatus;
  @override
  @JsonKey(ignore: true)
  _$$_FilterScreenStateCopyWith<_$_FilterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
