// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_site_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchSiteEntity _$LaunchSiteEntityFromJson(Map<String, dynamic> json) {
  return _LaunchSiteEntity.fromJson(json);
}

/// @nodoc
mixin _$LaunchSiteEntity {
  String? get siteId => throw _privateConstructorUsedError;
  String? get siteName => throw _privateConstructorUsedError;
  String? get siteNameLong => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchSiteEntityCopyWith<LaunchSiteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchSiteEntityCopyWith<$Res> {
  factory $LaunchSiteEntityCopyWith(
          LaunchSiteEntity value, $Res Function(LaunchSiteEntity) then) =
      _$LaunchSiteEntityCopyWithImpl<$Res, LaunchSiteEntity>;
  @useResult
  $Res call({String? siteId, String? siteName, String? siteNameLong});
}

/// @nodoc
class _$LaunchSiteEntityCopyWithImpl<$Res, $Val extends LaunchSiteEntity>
    implements $LaunchSiteEntityCopyWith<$Res> {
  _$LaunchSiteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteId = freezed,
    Object? siteName = freezed,
    Object? siteNameLong = freezed,
  }) {
    return _then(_value.copyWith(
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      siteName: freezed == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
      siteNameLong: freezed == siteNameLong
          ? _value.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaunchSiteEntityImplCopyWith<$Res>
    implements $LaunchSiteEntityCopyWith<$Res> {
  factory _$$LaunchSiteEntityImplCopyWith(_$LaunchSiteEntityImpl value,
          $Res Function(_$LaunchSiteEntityImpl) then) =
      __$$LaunchSiteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? siteId, String? siteName, String? siteNameLong});
}

/// @nodoc
class __$$LaunchSiteEntityImplCopyWithImpl<$Res>
    extends _$LaunchSiteEntityCopyWithImpl<$Res, _$LaunchSiteEntityImpl>
    implements _$$LaunchSiteEntityImplCopyWith<$Res> {
  __$$LaunchSiteEntityImplCopyWithImpl(_$LaunchSiteEntityImpl _value,
      $Res Function(_$LaunchSiteEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteId = freezed,
    Object? siteName = freezed,
    Object? siteNameLong = freezed,
  }) {
    return _then(_$LaunchSiteEntityImpl(
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      siteName: freezed == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
      siteNameLong: freezed == siteNameLong
          ? _value.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LaunchSiteEntityImpl extends _LaunchSiteEntity {
  const _$LaunchSiteEntityImpl({this.siteId, this.siteName, this.siteNameLong})
      : super._();

  factory _$LaunchSiteEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchSiteEntityImplFromJson(json);

  @override
  final String? siteId;
  @override
  final String? siteName;
  @override
  final String? siteNameLong;

  @override
  String toString() {
    return 'LaunchSiteEntity(siteId: $siteId, siteName: $siteName, siteNameLong: $siteNameLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchSiteEntityImpl &&
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
  _$$LaunchSiteEntityImplCopyWith<_$LaunchSiteEntityImpl> get copyWith =>
      __$$LaunchSiteEntityImplCopyWithImpl<_$LaunchSiteEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchSiteEntityImplToJson(
      this,
    );
  }
}

abstract class _LaunchSiteEntity extends LaunchSiteEntity {
  const factory _LaunchSiteEntity(
      {final String? siteId,
      final String? siteName,
      final String? siteNameLong}) = _$LaunchSiteEntityImpl;
  const _LaunchSiteEntity._() : super._();

  factory _LaunchSiteEntity.fromJson(Map<String, dynamic> json) =
      _$LaunchSiteEntityImpl.fromJson;

  @override
  String? get siteId;
  @override
  String? get siteName;
  @override
  String? get siteNameLong;
  @override
  @JsonKey(ignore: true)
  _$$LaunchSiteEntityImplCopyWith<_$LaunchSiteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
