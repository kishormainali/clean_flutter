// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_rocket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchRocketModel _$LaunchRocketModelFromJson(Map<String, dynamic> json) {
  return _LaunchRocketModel.fromJson(json);
}

/// @nodoc
mixin _$LaunchRocketModel {
  RocketModel get rocket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchRocketModelCopyWith<LaunchRocketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchRocketModelCopyWith<$Res> {
  factory $LaunchRocketModelCopyWith(
          LaunchRocketModel value, $Res Function(LaunchRocketModel) then) =
      _$LaunchRocketModelCopyWithImpl<$Res, LaunchRocketModel>;
  @useResult
  $Res call({RocketModel rocket});

  $RocketModelCopyWith<$Res> get rocket;
}

/// @nodoc
class _$LaunchRocketModelCopyWithImpl<$Res, $Val extends LaunchRocketModel>
    implements $LaunchRocketModelCopyWith<$Res> {
  _$LaunchRocketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocket = null,
  }) {
    return _then(_value.copyWith(
      rocket: null == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as RocketModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RocketModelCopyWith<$Res> get rocket {
    return $RocketModelCopyWith<$Res>(_value.rocket, (value) {
      return _then(_value.copyWith(rocket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaunchRocketModelImplCopyWith<$Res>
    implements $LaunchRocketModelCopyWith<$Res> {
  factory _$$LaunchRocketModelImplCopyWith(_$LaunchRocketModelImpl value,
          $Res Function(_$LaunchRocketModelImpl) then) =
      __$$LaunchRocketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RocketModel rocket});

  @override
  $RocketModelCopyWith<$Res> get rocket;
}

/// @nodoc
class __$$LaunchRocketModelImplCopyWithImpl<$Res>
    extends _$LaunchRocketModelCopyWithImpl<$Res, _$LaunchRocketModelImpl>
    implements _$$LaunchRocketModelImplCopyWith<$Res> {
  __$$LaunchRocketModelImplCopyWithImpl(_$LaunchRocketModelImpl _value,
      $Res Function(_$LaunchRocketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocket = null,
  }) {
    return _then(_$LaunchRocketModelImpl(
      rocket: null == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as RocketModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaunchRocketModelImpl implements _LaunchRocketModel {
  const _$LaunchRocketModelImpl({required this.rocket});

  factory _$LaunchRocketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchRocketModelImplFromJson(json);

  @override
  final RocketModel rocket;

  @override
  String toString() {
    return 'LaunchRocketModel(rocket: $rocket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchRocketModelImpl &&
            (identical(other.rocket, rocket) || other.rocket == rocket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rocket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchRocketModelImplCopyWith<_$LaunchRocketModelImpl> get copyWith =>
      __$$LaunchRocketModelImplCopyWithImpl<_$LaunchRocketModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchRocketModelImplToJson(
      this,
    );
  }
}

abstract class _LaunchRocketModel implements LaunchRocketModel {
  const factory _LaunchRocketModel({required final RocketModel rocket}) =
      _$LaunchRocketModelImpl;

  factory _LaunchRocketModel.fromJson(Map<String, dynamic> json) =
      _$LaunchRocketModelImpl.fromJson;

  @override
  RocketModel get rocket;
  @override
  @JsonKey(ignore: true)
  _$$LaunchRocketModelImplCopyWith<_$LaunchRocketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RocketModel _$RocketModelFromJson(Map<String, dynamic> json) {
  return _RocketModel.fromJson(json);
}

/// @nodoc
mixin _$RocketModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get stages => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get firstFlight => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RocketModelCopyWith<RocketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocketModelCopyWith<$Res> {
  factory $RocketModelCopyWith(
          RocketModel value, $Res Function(RocketModel) then) =
      _$RocketModelCopyWithImpl<$Res, RocketModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      int stages,
      String type,
      String firstFlight,
      String country,
      String description,
      String company,
      bool active});
}

/// @nodoc
class _$RocketModelCopyWithImpl<$Res, $Val extends RocketModel>
    implements $RocketModelCopyWith<$Res> {
  _$RocketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? stages = null,
    Object? type = null,
    Object? firstFlight = null,
    Object? country = null,
    Object? description = null,
    Object? company = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stages: null == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      firstFlight: null == firstFlight
          ? _value.firstFlight
          : firstFlight // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RocketModelImplCopyWith<$Res>
    implements $RocketModelCopyWith<$Res> {
  factory _$$RocketModelImplCopyWith(
          _$RocketModelImpl value, $Res Function(_$RocketModelImpl) then) =
      __$$RocketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int stages,
      String type,
      String firstFlight,
      String country,
      String description,
      String company,
      bool active});
}

/// @nodoc
class __$$RocketModelImplCopyWithImpl<$Res>
    extends _$RocketModelCopyWithImpl<$Res, _$RocketModelImpl>
    implements _$$RocketModelImplCopyWith<$Res> {
  __$$RocketModelImplCopyWithImpl(
      _$RocketModelImpl _value, $Res Function(_$RocketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? stages = null,
    Object? type = null,
    Object? firstFlight = null,
    Object? country = null,
    Object? description = null,
    Object? company = null,
    Object? active = null,
  }) {
    return _then(_$RocketModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stages: null == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      firstFlight: null == firstFlight
          ? _value.firstFlight
          : firstFlight // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RocketModelImpl extends _RocketModel {
  const _$RocketModelImpl(
      {required this.id,
      required this.name,
      required this.stages,
      required this.type,
      required this.firstFlight,
      required this.country,
      required this.description,
      required this.company,
      required this.active})
      : super._();

  factory _$RocketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RocketModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int stages;
  @override
  final String type;
  @override
  final String firstFlight;
  @override
  final String country;
  @override
  final String description;
  @override
  final String company;
  @override
  final bool active;

  @override
  String toString() {
    return 'RocketModel(id: $id, name: $name, stages: $stages, type: $type, firstFlight: $firstFlight, country: $country, description: $description, company: $company, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RocketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stages, stages) || other.stages == stages) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.firstFlight, firstFlight) ||
                other.firstFlight == firstFlight) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, stages, type,
      firstFlight, country, description, company, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RocketModelImplCopyWith<_$RocketModelImpl> get copyWith =>
      __$$RocketModelImplCopyWithImpl<_$RocketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RocketModelImplToJson(
      this,
    );
  }
}

abstract class _RocketModel extends RocketModel {
  const factory _RocketModel(
      {required final String id,
      required final String name,
      required final int stages,
      required final String type,
      required final String firstFlight,
      required final String country,
      required final String description,
      required final String company,
      required final bool active}) = _$RocketModelImpl;
  const _RocketModel._() : super._();

  factory _RocketModel.fromJson(Map<String, dynamic> json) =
      _$RocketModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get stages;
  @override
  String get type;
  @override
  String get firstFlight;
  @override
  String get country;
  @override
  String get description;
  @override
  String get company;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$RocketModelImplCopyWith<_$RocketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
