// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_model.dart';

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
  String get id => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  int get launchDateUnix => throw _privateConstructorUsedError;
  String get missionName => throw _privateConstructorUsedError;
  bool? get launchSuccess => throw _privateConstructorUsedError;
  bool get upcoming => throw _privateConstructorUsedError;
  LaunchRocketModel get rocket => throw _privateConstructorUsedError;
  LaunchSiteModel? get launchSite => throw _privateConstructorUsedError;

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
      {String id,
      String details,
      int launchDateUnix,
      String missionName,
      bool? launchSuccess,
      bool upcoming,
      LaunchRocketModel rocket,
      LaunchSiteModel? launchSite});

  $LaunchRocketModelCopyWith<$Res> get rocket;
  $LaunchSiteModelCopyWith<$Res>? get launchSite;
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
    Object? id = null,
    Object? details = null,
    Object? launchDateUnix = null,
    Object? missionName = null,
    Object? launchSuccess = freezed,
    Object? upcoming = null,
    Object? rocket = null,
    Object? launchSite = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      launchDateUnix: null == launchDateUnix
          ? _value.launchDateUnix
          : launchDateUnix // ignore: cast_nullable_to_non_nullable
              as int,
      missionName: null == missionName
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String,
      launchSuccess: freezed == launchSuccess
          ? _value.launchSuccess
          : launchSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      upcoming: null == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool,
      rocket: null == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as LaunchRocketModel,
      launchSite: freezed == launchSite
          ? _value.launchSite
          : launchSite // ignore: cast_nullable_to_non_nullable
              as LaunchSiteModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchRocketModelCopyWith<$Res> get rocket {
    return $LaunchRocketModelCopyWith<$Res>(_value.rocket, (value) {
      return _then(_value.copyWith(rocket: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchSiteModelCopyWith<$Res>? get launchSite {
    if (_value.launchSite == null) {
      return null;
    }

    return $LaunchSiteModelCopyWith<$Res>(_value.launchSite!, (value) {
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
      {String id,
      String details,
      int launchDateUnix,
      String missionName,
      bool? launchSuccess,
      bool upcoming,
      LaunchRocketModel rocket,
      LaunchSiteModel? launchSite});

  @override
  $LaunchRocketModelCopyWith<$Res> get rocket;
  @override
  $LaunchSiteModelCopyWith<$Res>? get launchSite;
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
    Object? id = null,
    Object? details = null,
    Object? launchDateUnix = null,
    Object? missionName = null,
    Object? launchSuccess = freezed,
    Object? upcoming = null,
    Object? rocket = null,
    Object? launchSite = freezed,
  }) {
    return _then(_$LaunchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      launchDateUnix: null == launchDateUnix
          ? _value.launchDateUnix
          : launchDateUnix // ignore: cast_nullable_to_non_nullable
              as int,
      missionName: null == missionName
          ? _value.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String,
      launchSuccess: freezed == launchSuccess
          ? _value.launchSuccess
          : launchSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      upcoming: null == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool,
      rocket: null == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as LaunchRocketModel,
      launchSite: freezed == launchSite
          ? _value.launchSite
          : launchSite // ignore: cast_nullable_to_non_nullable
              as LaunchSiteModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LaunchModelImpl extends _LaunchModel {
  const _$LaunchModelImpl(
      {required this.id,
      this.details = '',
      required this.launchDateUnix,
      required this.missionName,
      this.launchSuccess,
      required this.upcoming,
      required this.rocket,
      this.launchSite})
      : super._();

  factory _$LaunchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String details;
  @override
  final int launchDateUnix;
  @override
  final String missionName;
  @override
  final bool? launchSuccess;
  @override
  final bool upcoming;
  @override
  final LaunchRocketModel rocket;
  @override
  final LaunchSiteModel? launchSite;

  @override
  String toString() {
    return 'LaunchModel(id: $id, details: $details, launchDateUnix: $launchDateUnix, missionName: $missionName, launchSuccess: $launchSuccess, upcoming: $upcoming, rocket: $rocket, launchSite: $launchSite)';
  }

  @override
  bool operator ==(dynamic other) {
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
      {required final String id,
      final String details,
      required final int launchDateUnix,
      required final String missionName,
      final bool? launchSuccess,
      required final bool upcoming,
      required final LaunchRocketModel rocket,
      final LaunchSiteModel? launchSite}) = _$LaunchModelImpl;
  const _LaunchModel._() : super._();

  factory _LaunchModel.fromJson(Map<String, dynamic> json) =
      _$LaunchModelImpl.fromJson;

  @override
  String get id;
  @override
  String get details;
  @override
  int get launchDateUnix;
  @override
  String get missionName;
  @override
  bool? get launchSuccess;
  @override
  bool get upcoming;
  @override
  LaunchRocketModel get rocket;
  @override
  LaunchSiteModel? get launchSite;
  @override
  @JsonKey(ignore: true)
  _$$LaunchModelImplCopyWith<_$LaunchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
