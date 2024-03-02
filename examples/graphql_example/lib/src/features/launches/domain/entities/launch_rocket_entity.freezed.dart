// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_rocket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchRocketEntity _$LaunchRocketEntityFromJson(Map<String, dynamic> json) {
  return _LaunchRocketEntity.fromJson(json);
}

/// @nodoc
mixin _$LaunchRocketEntity {
  RocketEntity? get rocket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchRocketEntityCopyWith<LaunchRocketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchRocketEntityCopyWith<$Res> {
  factory $LaunchRocketEntityCopyWith(
          LaunchRocketEntity value, $Res Function(LaunchRocketEntity) then) =
      _$LaunchRocketEntityCopyWithImpl<$Res, LaunchRocketEntity>;
  @useResult
  $Res call({RocketEntity? rocket});

  $RocketEntityCopyWith<$Res>? get rocket;
}

/// @nodoc
class _$LaunchRocketEntityCopyWithImpl<$Res, $Val extends LaunchRocketEntity>
    implements $LaunchRocketEntityCopyWith<$Res> {
  _$LaunchRocketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocket = freezed,
  }) {
    return _then(_value.copyWith(
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as RocketEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RocketEntityCopyWith<$Res>? get rocket {
    if (_value.rocket == null) {
      return null;
    }

    return $RocketEntityCopyWith<$Res>(_value.rocket!, (value) {
      return _then(_value.copyWith(rocket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaunchRocketEntityImplCopyWith<$Res>
    implements $LaunchRocketEntityCopyWith<$Res> {
  factory _$$LaunchRocketEntityImplCopyWith(_$LaunchRocketEntityImpl value,
          $Res Function(_$LaunchRocketEntityImpl) then) =
      __$$LaunchRocketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RocketEntity? rocket});

  @override
  $RocketEntityCopyWith<$Res>? get rocket;
}

/// @nodoc
class __$$LaunchRocketEntityImplCopyWithImpl<$Res>
    extends _$LaunchRocketEntityCopyWithImpl<$Res, _$LaunchRocketEntityImpl>
    implements _$$LaunchRocketEntityImplCopyWith<$Res> {
  __$$LaunchRocketEntityImplCopyWithImpl(_$LaunchRocketEntityImpl _value,
      $Res Function(_$LaunchRocketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocket = freezed,
  }) {
    return _then(_$LaunchRocketEntityImpl(
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as RocketEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaunchRocketEntityImpl implements _LaunchRocketEntity {
  const _$LaunchRocketEntityImpl({this.rocket});

  factory _$LaunchRocketEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchRocketEntityImplFromJson(json);

  @override
  final RocketEntity? rocket;

  @override
  String toString() {
    return 'LaunchRocketEntity(rocket: $rocket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchRocketEntityImpl &&
            (identical(other.rocket, rocket) || other.rocket == rocket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rocket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchRocketEntityImplCopyWith<_$LaunchRocketEntityImpl> get copyWith =>
      __$$LaunchRocketEntityImplCopyWithImpl<_$LaunchRocketEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchRocketEntityImplToJson(
      this,
    );
  }
}

abstract class _LaunchRocketEntity implements LaunchRocketEntity {
  const factory _LaunchRocketEntity({final RocketEntity? rocket}) =
      _$LaunchRocketEntityImpl;

  factory _LaunchRocketEntity.fromJson(Map<String, dynamic> json) =
      _$LaunchRocketEntityImpl.fromJson;

  @override
  RocketEntity? get rocket;
  @override
  @JsonKey(ignore: true)
  _$$LaunchRocketEntityImplCopyWith<_$LaunchRocketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RocketEntity _$RocketEntityFromJson(Map<String, dynamic> json) {
  return _RocketEntity.fromJson(json);
}

/// @nodoc
mixin _$RocketEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get stages => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RocketEntityCopyWith<RocketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocketEntityCopyWith<$Res> {
  factory $RocketEntityCopyWith(
          RocketEntity value, $Res Function(RocketEntity) then) =
      _$RocketEntityCopyWithImpl<$Res, RocketEntity>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      int? stages,
      String? type,
      String? country,
      String? description,
      String? company,
      bool? active});
}

/// @nodoc
class _$RocketEntityCopyWithImpl<$Res, $Val extends RocketEntity>
    implements $RocketEntityCopyWith<$Res> {
  _$RocketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stages = freezed,
    Object? type = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? company = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stages: freezed == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RocketEntityImplCopyWith<$Res>
    implements $RocketEntityCopyWith<$Res> {
  factory _$$RocketEntityImplCopyWith(
          _$RocketEntityImpl value, $Res Function(_$RocketEntityImpl) then) =
      __$$RocketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      int? stages,
      String? type,
      String? country,
      String? description,
      String? company,
      bool? active});
}

/// @nodoc
class __$$RocketEntityImplCopyWithImpl<$Res>
    extends _$RocketEntityCopyWithImpl<$Res, _$RocketEntityImpl>
    implements _$$RocketEntityImplCopyWith<$Res> {
  __$$RocketEntityImplCopyWithImpl(
      _$RocketEntityImpl _value, $Res Function(_$RocketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stages = freezed,
    Object? type = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? company = freezed,
    Object? active = freezed,
  }) {
    return _then(_$RocketEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stages: freezed == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RocketEntityImpl extends _RocketEntity {
  const _$RocketEntityImpl(
      {this.id,
      this.name,
      this.stages,
      this.type,
      this.country,
      this.description,
      this.company,
      this.active})
      : super._();

  factory _$RocketEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RocketEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? stages;
  @override
  final String? type;
  @override
  final String? country;
  @override
  final String? description;
  @override
  final String? company;
  @override
  final bool? active;

  @override
  String toString() {
    return 'RocketEntity(id: $id, name: $name, stages: $stages, type: $type, country: $country, description: $description, company: $company, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RocketEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stages, stages) || other.stages == stages) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, stages, type, country,
      description, company, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RocketEntityImplCopyWith<_$RocketEntityImpl> get copyWith =>
      __$$RocketEntityImplCopyWithImpl<_$RocketEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RocketEntityImplToJson(
      this,
    );
  }
}

abstract class _RocketEntity extends RocketEntity {
  const factory _RocketEntity(
      {final String? id,
      final String? name,
      final int? stages,
      final String? type,
      final String? country,
      final String? description,
      final String? company,
      final bool? active}) = _$RocketEntityImpl;
  const _RocketEntity._() : super._();

  factory _RocketEntity.fromJson(Map<String, dynamic> json) =
      _$RocketEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get stages;
  @override
  String? get type;
  @override
  String? get country;
  @override
  String? get description;
  @override
  String? get company;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$RocketEntityImplCopyWith<_$RocketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
