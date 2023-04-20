// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notifications _$NotificationsFromJson(Map<String, dynamic> json) {
  return _Notifications.fromJson(json);
}

/// @nodoc
mixin _$Notifications {
  bool? get email => throw _privateConstructorUsedError;
  bool? get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsCopyWith<Notifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsCopyWith<$Res> {
  factory $NotificationsCopyWith(
          Notifications value, $Res Function(Notifications) then) =
      _$NotificationsCopyWithImpl<$Res, Notifications>;
  @useResult
  $Res call({bool? email, bool? mobile});
}

/// @nodoc
class _$NotificationsCopyWithImpl<$Res, $Val extends Notifications>
    implements $NotificationsCopyWith<$Res> {
  _$NotificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationsCopyWith<$Res>
    implements $NotificationsCopyWith<$Res> {
  factory _$$_NotificationsCopyWith(
          _$_Notifications value, $Res Function(_$_Notifications) then) =
      __$$_NotificationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? email, bool? mobile});
}

/// @nodoc
class __$$_NotificationsCopyWithImpl<$Res>
    extends _$NotificationsCopyWithImpl<$Res, _$_Notifications>
    implements _$$_NotificationsCopyWith<$Res> {
  __$$_NotificationsCopyWithImpl(
      _$_Notifications _value, $Res Function(_$_Notifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_$_Notifications(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Notifications with DiagnosticableTreeMixin implements _Notifications {
  const _$_Notifications({this.email, this.mobile});

  factory _$_Notifications.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationsFromJson(json);

  @override
  final bool? email;
  @override
  final bool? mobile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Notifications(email: $email, mobile: $mobile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Notifications'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('mobile', mobile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notifications &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationsCopyWith<_$_Notifications> get copyWith =>
      __$$_NotificationsCopyWithImpl<_$_Notifications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationsToJson(
      this,
    );
  }
}

abstract class _Notifications implements Notifications {
  const factory _Notifications({final bool? email, final bool? mobile}) =
      _$_Notifications;

  factory _Notifications.fromJson(Map<String, dynamic> json) =
      _$_Notifications.fromJson;

  @override
  bool? get email;
  @override
  bool? get mobile;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationsCopyWith<_$_Notifications> get copyWith =>
      throw _privateConstructorUsedError;
}
