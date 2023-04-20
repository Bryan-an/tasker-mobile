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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSettings,
    TResult? Function(Settings settings)? updateSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_UpdateSettings value) updateSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_UpdateSettings value)? updateSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_UpdateSettings value)? updateSettings,
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
abstract class _$$_GetSettingsCopyWith<$Res> {
  factory _$$_GetSettingsCopyWith(
          _$_GetSettings value, $Res Function(_$_GetSettings) then) =
      __$$_GetSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_GetSettings>
    implements _$$_GetSettingsCopyWith<$Res> {
  __$$_GetSettingsCopyWithImpl(
      _$_GetSettings _value, $Res Function(_$_GetSettings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSettings with DiagnosticableTreeMixin implements _GetSettings {
  const _$_GetSettings();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.getSettings()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsEvent.getSettings'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return getSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSettings,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return getSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    TResult Function(Settings settings)? updateSettings,
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
  }) {
    return getSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_UpdateSettings value)? updateSettings,
  }) {
    return getSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings(this);
    }
    return orElse();
  }
}

abstract class _GetSettings implements SettingsEvent {
  const factory _GetSettings() = _$_GetSettings;
}

/// @nodoc
abstract class _$$_UpdateSettingsCopyWith<$Res> {
  factory _$$_UpdateSettingsCopyWith(
          _$_UpdateSettings value, $Res Function(_$_UpdateSettings) then) =
      __$$_UpdateSettingsCopyWithImpl<$Res>;
  @useResult
  $Res call({Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_UpdateSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$_UpdateSettings>
    implements _$$_UpdateSettingsCopyWith<$Res> {
  __$$_UpdateSettingsCopyWithImpl(
      _$_UpdateSettings _value, $Res Function(_$_UpdateSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$_UpdateSettings(
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

class _$_UpdateSettings
    with DiagnosticableTreeMixin
    implements _UpdateSettings {
  const _$_UpdateSettings({required this.settings});

  @override
  final Settings settings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.updateSettings(settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.updateSettings'))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSettings &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSettingsCopyWith<_$_UpdateSettings> get copyWith =>
      __$$_UpdateSettingsCopyWithImpl<_$_UpdateSettings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return updateSettings(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSettings,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return updateSettings?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    TResult Function(Settings settings)? updateSettings,
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
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_UpdateSettings value)? updateSettings,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_UpdateSettings value)? updateSettings,
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
      _$_UpdateSettings;

  Settings get settings;
  @JsonKey(ignore: true)
  _$$_UpdateSettingsCopyWith<_$_UpdateSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  Settings get settings => throw _privateConstructorUsedError;
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
    Object? getSettingsStatus = null,
    Object? updateSettingsStatus = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
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
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Settings settings,
      Status getSettingsStatus,
      Status updateSettingsStatus});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? getSettingsStatus = null,
    Object? updateSettingsStatus = null,
  }) {
    return _then(_$_SettingsState(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
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

class _$_SettingsState with DiagnosticableTreeMixin implements _SettingsState {
  const _$_SettingsState(
      {this.settings = const Settings(),
      this.getSettingsStatus = Status.initial,
      this.updateSettingsStatus = Status.initial});

  @override
  @JsonKey()
  final Settings settings;
  @override
  @JsonKey()
  final Status getSettingsStatus;
  @override
  @JsonKey()
  final Status updateSettingsStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(settings: $settings, getSettingsStatus: $getSettingsStatus, updateSettingsStatus: $updateSettingsStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('settings', settings))
      ..add(DiagnosticsProperty('getSettingsStatus', getSettingsStatus))
      ..add(DiagnosticsProperty('updateSettingsStatus', updateSettingsStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.getSettingsStatus, getSettingsStatus) ||
                other.getSettingsStatus == getSettingsStatus) &&
            (identical(other.updateSettingsStatus, updateSettingsStatus) ||
                other.updateSettingsStatus == updateSettingsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, settings, getSettingsStatus, updateSettingsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {final Settings settings,
      final Status getSettingsStatus,
      final Status updateSettingsStatus}) = _$_SettingsState;

  @override
  Settings get settings;
  @override
  Status get getSettingsStatus;
  @override
  Status get updateSettingsStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
