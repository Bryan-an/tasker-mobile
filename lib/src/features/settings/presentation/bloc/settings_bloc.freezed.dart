// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
    required TResult Function(Settings settings) updateSettings,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSettings,
    TResult? Function(Settings settings)? updateSettings,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    TResult Function(Settings settings)? updateSettings,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_UpdateSettings value) updateSettings,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_UpdateSettings value)? updateSettings,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_UpdateSettings value)? updateSettings,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSettingsImplCopyWith<$Res> {
  factory _$$GetSettingsImplCopyWith(
          _$GetSettingsImpl value, $Res Function(_$GetSettingsImpl) then) =
      __$$GetSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSettingsImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$GetSettingsImpl>
    implements _$$GetSettingsImplCopyWith<$Res> {
  __$$GetSettingsImplCopyWithImpl(
      _$GetSettingsImpl _value, $Res Function(_$GetSettingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSettingsImpl implements _GetSettings {
  const _$GetSettingsImpl();

  @override
  String toString() {
    return 'SettingsEvent.getSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
    required TResult Function(Settings settings) updateSettings,
    required TResult Function() reset,
  }) {
    return getSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSettings,
    TResult? Function(Settings settings)? updateSettings,
    TResult? Function()? reset,
  }) {
    return getSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    TResult Function(Settings settings)? updateSettings,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_UpdateSettings value) updateSettings,
    required TResult Function(_Reset value) reset,
  }) {
    return getSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_UpdateSettings value)? updateSettings,
    TResult? Function(_Reset value)? reset,
  }) {
    return getSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_UpdateSettings value)? updateSettings,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings(this);
    }
    return orElse();
  }
}

abstract class _GetSettings implements SettingsEvent {
  const factory _GetSettings() = _$GetSettingsImpl;
}

/// @nodoc
abstract class _$$UpdateSettingsImplCopyWith<$Res> {
  factory _$$UpdateSettingsImplCopyWith(_$UpdateSettingsImpl value,
          $Res Function(_$UpdateSettingsImpl) then) =
      __$$UpdateSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$UpdateSettingsImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$UpdateSettingsImpl>
    implements _$$UpdateSettingsImplCopyWith<$Res> {
  __$$UpdateSettingsImplCopyWithImpl(
      _$UpdateSettingsImpl _value, $Res Function(_$UpdateSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$UpdateSettingsImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$UpdateSettingsImpl implements _UpdateSettings {
  const _$UpdateSettingsImpl({required this.settings});

  @override
  final Settings settings;

  @override
  String toString() {
    return 'SettingsEvent.updateSettings(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSettingsImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSettingsImplCopyWith<_$UpdateSettingsImpl> get copyWith =>
      __$$UpdateSettingsImplCopyWithImpl<_$UpdateSettingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
    required TResult Function(Settings settings) updateSettings,
    required TResult Function() reset,
  }) {
    return updateSettings(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSettings,
    TResult? Function(Settings settings)? updateSettings,
    TResult? Function()? reset,
  }) {
    return updateSettings?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    TResult Function(Settings settings)? updateSettings,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_UpdateSettings value) updateSettings,
    required TResult Function(_Reset value) reset,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_UpdateSettings value)? updateSettings,
    TResult? Function(_Reset value)? reset,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_UpdateSettings value)? updateSettings,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(this);
    }
    return orElse();
  }
}

abstract class _UpdateSettings implements SettingsEvent {
  const factory _UpdateSettings({required final Settings settings}) =
      _$UpdateSettingsImpl;

  Settings get settings;
  @JsonKey(ignore: true)
  _$$UpdateSettingsImplCopyWith<_$UpdateSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'SettingsEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
    required TResult Function(Settings settings) updateSettings,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSettings,
    TResult? Function(Settings settings)? updateSettings,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    TResult Function(Settings settings)? updateSettings,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_UpdateSettings value) updateSettings,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_UpdateSettings value)? updateSettings,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_UpdateSettings value)? updateSettings,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements SettingsEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$SettingsState {
  Settings get settings => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Status get getSettingsStatus => throw _privateConstructorUsedError;
  Status get updateSettingsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {Settings settings,
      ThemeMode themeMode,
      Status getSettingsStatus,
      Status updateSettingsStatus});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? themeMode = null,
    Object? getSettingsStatus = null,
    Object? updateSettingsStatus = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      getSettingsStatus: null == getSettingsStatus
          ? _value.getSettingsStatus
          : getSettingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateSettingsStatus: null == updateSettingsStatus
          ? _value.updateSettingsStatus
          : updateSettingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Settings settings,
      ThemeMode themeMode,
      Status getSettingsStatus,
      Status updateSettingsStatus});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? themeMode = null,
    Object? getSettingsStatus = null,
    Object? updateSettingsStatus = null,
  }) {
    return _then(_$SettingsStateImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      getSettingsStatus: null == getSettingsStatus
          ? _value.getSettingsStatus
          : getSettingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      updateSettingsStatus: null == updateSettingsStatus
          ? _value.updateSettingsStatus
          : updateSettingsStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  const _$SettingsStateImpl(
      {this.settings = const Settings(),
      this.themeMode = ThemeMode.light,
      this.getSettingsStatus = Status.initial,
      this.updateSettingsStatus = Status.initial});

  @override
  @JsonKey()
  final Settings settings;
  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final Status getSettingsStatus;
  @override
  @JsonKey()
  final Status updateSettingsStatus;

  @override
  String toString() {
    return 'SettingsState(settings: $settings, themeMode: $themeMode, getSettingsStatus: $getSettingsStatus, updateSettingsStatus: $updateSettingsStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.getSettingsStatus, getSettingsStatus) ||
                other.getSettingsStatus == getSettingsStatus) &&
            (identical(other.updateSettingsStatus, updateSettingsStatus) ||
                other.updateSettingsStatus == updateSettingsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, themeMode,
      getSettingsStatus, updateSettingsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {final Settings settings,
      final ThemeMode themeMode,
      final Status getSettingsStatus,
      final Status updateSettingsStatus}) = _$SettingsStateImpl;

  @override
  Settings get settings;
  @override
  ThemeMode get themeMode;
  @override
  Status get getSettingsStatus;
  @override
  Status get updateSettingsStatus;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
