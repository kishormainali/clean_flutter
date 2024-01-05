// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_site_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchSiteModel _$LaunchSiteModelFromJson(Map<String, dynamic> json) {
  return _LaunchSiteModel.fromJson(json);
}

/// @nodoc
mixin _$LaunchSiteModel {
  String get siteId => throw _privateConstructorUsedError;
  String get siteName => throw _privateConstructorUsedError;
  String get siteNameLong => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchSiteModelCopyWith<LaunchSiteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchSiteModelCopyWith<$Res> {
  factory $LaunchSiteModelCopyWith(
          LaunchSiteModel value, $Res Function(LaunchSiteModel) then) =
      _$LaunchSiteModelCopyWithImpl<$Res, LaunchSiteModel>;
  @useResult
  $Res call({String siteId, String siteName, String siteNameLong});
}

/// @nodoc
class _$LaunchSiteModelCopyWithImpl<$Res, $Val extends LaunchSiteModel>
    implements $LaunchSiteModelCopyWith<$Res> {
  _$LaunchSiteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteId = null,
    Object? siteName = null,
    Object? siteNameLong = null,
  }) {
    return _then(_value.copyWith(
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      siteNameLong: null == siteNameLong
          ? _value.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaunchSiteModelImplCopyWith<$Res>
    implements $LaunchSiteModelCopyWith<$Res> {
  factory _$$LaunchSiteModelImplCopyWith(_$LaunchSiteModelImpl value,
          $Res Function(_$LaunchSiteModelImpl) then) =
      __$$LaunchSiteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String siteId, String siteName, String siteNameLong});
}

/// @nodoc
class __$$LaunchSiteModelImplCopyWithImpl<$Res>
    extends _$LaunchSiteModelCopyWithImpl<$Res, _$LaunchSiteModelImpl>
    implements _$$LaunchSiteModelImplCopyWith<$Res> {
  __$$LaunchSiteModelImplCopyWithImpl(
      _$LaunchSiteModelImpl _value, $Res Function(_$LaunchSiteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteId = null,
    Object? siteName = null,
    Object? siteNameLong = null,
  }) {
    return _then(_$LaunchSiteModelImpl(
      siteId: null == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      siteNameLong: null == siteNameLong
          ? _value.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LaunchSiteModelImpl extends _LaunchSiteModel {
  const _$LaunchSiteModelImpl(
      {required this.siteId,
      required this.siteName,
      required this.siteNameLong})
      : super._();

  factory _$LaunchSiteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchSiteModelImplFromJson(json);

  @override
  final String siteId;
  @override
  final String siteName;
  @override
  final String siteNameLong;

  @override
  String toString() {
    return 'LaunchSiteModel(siteId: $siteId, siteName: $siteName, siteNameLong: $siteNameLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchSiteModelImpl &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.siteNameLong, siteNameLong) ||
                other.siteNameLong == siteNameLong));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, siteId, siteName, siteNameLong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchSiteModelImplCopyWith<_$LaunchSiteModelImpl> get copyWith =>
      __$$LaunchSiteModelImplCopyWithImpl<_$LaunchSiteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchSiteModelImplToJson(
      this,
    );
  }
}

abstract class _LaunchSiteModel extends LaunchSiteModel {
  const factory _LaunchSiteModel(
      {required final String siteId,
      required final String siteName,
      required final String siteNameLong}) = _$LaunchSiteModelImpl;
  const _LaunchSiteModel._() : super._();

  factory _LaunchSiteModel.fromJson(Map<String, dynamic> json) =
      _$LaunchSiteModelImpl.fromJson;

  @override
  String get siteId;
  @override
  String get siteName;
  @override
  String get siteNameLong;
  @override
  @JsonKey(ignore: true)
  _$$LaunchSiteModelImplCopyWith<_$LaunchSiteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
