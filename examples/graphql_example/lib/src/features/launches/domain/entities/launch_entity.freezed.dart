// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) {
  return _LaunchModel.fromJson(json);
}

/// @nodoc
mixin _$LaunchModel {
  String? get id => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  DateTime? get launchDateUnix => throw _privateConstructorUsedError;
  String? get missionName => throw _privateConstructorUsedError;
  bool? get launchSuccess => throw _privateConstructorUsedError;
  bool? get upcoming => throw _privateConstructorUsedError;
  LaunchRocketEntity? get rocket => throw _privateConstructorUsedError;
  LaunchSiteEntity? get launchSite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchModelCopyWith<LaunchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchModelCopyWith<$Res> {
  factory $LaunchModelCopyWith(
          LaunchModel value, $Res Function(LaunchModel) then) =
      _$LaunchModelCopyWithImpl<$Res, LaunchModel>;
  @useResult
  $Res call(
      {String? id,
      String? details,
      DateTime? launchDateUnix,
      String? missionName,
      bool? launchSuccess,
      bool? upcoming,
      LaunchRocketEntity? rocket,
      LaunchSiteEntity? launchSite});

  $LaunchRocketEntityCopyWith<$Res>? get rocket;
  $LaunchSiteEntityCopyWith<$Res>? get launchSite;
}

/// @nodoc
class _$LaunchModelCopyWithImpl<$Res, $Val extends LaunchModel>
    implements $LaunchModelCopyWith<$Res> {
  _$LaunchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? launchDateUnix = freezed,
    Object? missionName = freezed,
    Object? launchSuccess = freezed,
    Object? upcoming = freezed,
    Object? rocket = freezed,
    Object? launchSite = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      launchDateUnix: freezed == launchDateUnix
          ? _value.launchDateUnix
          : launchDateUnix // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      missionName: freezed == missionName
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String?,
      launchSuccess: freezed == launchSuccess
          ? _value.launchSuccess
          : launchSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as LaunchRocketEntity?,
      launchSite: freezed == launchSite
          ? _value.launchSite
          : launchSite // ignore: cast_nullable_to_non_nullable
              as LaunchSiteEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchRocketEntityCopyWith<$Res>? get rocket {
    if (_value.rocket == null) {
      return null;
    }

    return $LaunchRocketEntityCopyWith<$Res>(_value.rocket!, (value) {
      return _then(_value.copyWith(rocket: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchSiteEntityCopyWith<$Res>? get launchSite {
    if (_value.launchSite == null) {
      return null;
    }

    return $LaunchSiteEntityCopyWith<$Res>(_value.launchSite!, (value) {
      return _then(_value.copyWith(launchSite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaunchModelImplCopyWith<$Res>
    implements $LaunchModelCopyWith<$Res> {
  factory _$$LaunchModelImplCopyWith(
          _$LaunchModelImpl value, $Res Function(_$LaunchModelImpl) then) =
      __$$LaunchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? details,
      DateTime? launchDateUnix,
      String? missionName,
      bool? launchSuccess,
      bool? upcoming,
      LaunchRocketEntity? rocket,
      LaunchSiteEntity? launchSite});

  @override
  $LaunchRocketEntityCopyWith<$Res>? get rocket;
  @override
  $LaunchSiteEntityCopyWith<$Res>? get launchSite;
}

/// @nodoc
class __$$LaunchModelImplCopyWithImpl<$Res>
    extends _$LaunchModelCopyWithImpl<$Res, _$LaunchModelImpl>
    implements _$$LaunchModelImplCopyWith<$Res> {
  __$$LaunchModelImplCopyWithImpl(
      _$LaunchModelImpl _value, $Res Function(_$LaunchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? details = freezed,
    Object? launchDateUnix = freezed,
    Object? missionName = freezed,
    Object? launchSuccess = freezed,
    Object? upcoming = freezed,
    Object? rocket = freezed,
    Object? launchSite = freezed,
  }) {
    return _then(_$LaunchModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      launchDateUnix: freezed == launchDateUnix
          ? _value.launchDateUnix
          : launchDateUnix // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      missionName: freezed == missionName
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String?,
      launchSuccess: freezed == launchSuccess
          ? _value.launchSuccess
          : launchSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as LaunchRocketEntity?,
      launchSite: freezed == launchSite
          ? _value.launchSite
          : launchSite // ignore: cast_nullable_to_non_nullable
              as LaunchSiteEntity?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LaunchModelImpl extends _LaunchModel {
  const _$LaunchModelImpl(
      {this.id,
      this.details,
      this.launchDateUnix,
      this.missionName,
      this.launchSuccess,
      this.upcoming,
      this.rocket,
      this.launchSite})
      : super._();

  factory _$LaunchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? details;
  @override
  final DateTime? launchDateUnix;
  @override
  final String? missionName;
  @override
  final bool? launchSuccess;
  @override
  final bool? upcoming;
  @override
  final LaunchRocketEntity? rocket;
  @override
  final LaunchSiteEntity? launchSite;

  @override
  String toString() {
    return 'LaunchModel(id: $id, details: $details, launchDateUnix: $launchDateUnix, missionName: $missionName, launchSuccess: $launchSuccess, upcoming: $upcoming, rocket: $rocket, launchSite: $launchSite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.launchDateUnix, launchDateUnix) ||
                other.launchDateUnix == launchDateUnix) &&
            (identical(other.missionName, missionName) ||
                other.missionName == missionName) &&
            (identical(other.launchSuccess, launchSuccess) ||
                other.launchSuccess == launchSuccess) &&
            (identical(other.upcoming, upcoming) ||
                other.upcoming == upcoming) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.launchSite, launchSite) ||
                other.launchSite == launchSite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, details, launchDateUnix,
      missionName, launchSuccess, upcoming, rocket, launchSite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchModelImplCopyWith<_$LaunchModelImpl> get copyWith =>
      __$$LaunchModelImplCopyWithImpl<_$LaunchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchModelImplToJson(
      this,
    );
  }
}

abstract class _LaunchModel extends LaunchModel {
  const factory _LaunchModel(
      {final String? id,
      final String? details,
      final DateTime? launchDateUnix,
      final String? missionName,
      final bool? launchSuccess,
      final bool? upcoming,
      final LaunchRocketEntity? rocket,
      final LaunchSiteEntity? launchSite}) = _$LaunchModelImpl;
  const _LaunchModel._() : super._();

  factory _LaunchModel.fromJson(Map<String, dynamic> json) =
      _$LaunchModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get details;
  @override
  DateTime? get launchDateUnix;
  @override
  String? get missionName;
  @override
  bool? get launchSuccess;
  @override
  bool? get upcoming;
  @override
  LaunchRocketEntity? get rocket;
  @override
  LaunchSiteEntity? get launchSite;
  @override
  @JsonKey(ignore: true)
  _$$LaunchModelImplCopyWith<_$LaunchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
