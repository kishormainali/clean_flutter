// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_rocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchRocketModelImpl _$$LaunchRocketModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchRocketModelImpl(
      rocket: RocketModel.fromJson(json['rocket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LaunchRocketModelImplToJson(
        _$LaunchRocketModelImpl instance) =>
    <String, dynamic>{
      'rocket': instance.rocket,
    };

_$RocketModelImpl _$$RocketModelImplFromJson(Map<String, dynamic> json) =>
    _$RocketModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      stages: json['stages'] as int,
      type: json['type'] as String,
      firstFlight: json['first_flight'] as String,
      country: json['country'] as String,
      description: json['description'] as String,
      company: json['company'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$RocketModelImplToJson(_$RocketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'stages': instance.stages,
      'type': instance.type,
      'first_flight': instance.firstFlight,
      'country': instance.country,
      'description': instance.description,
      'company': instance.company,
      'active': instance.active,
    };
