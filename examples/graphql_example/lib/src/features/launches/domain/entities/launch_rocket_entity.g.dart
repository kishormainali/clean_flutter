// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_rocket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchRocketEntityImpl _$$LaunchRocketEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchRocketEntityImpl(
      rocket: json['rocket'] == null
          ? null
          : RocketEntity.fromJson(json['rocket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LaunchRocketEntityImplToJson(
        _$LaunchRocketEntityImpl instance) =>
    <String, dynamic>{
      'rocket': instance.rocket,
    };

_$RocketEntityImpl _$$RocketEntityImplFromJson(Map<String, dynamic> json) =>
    _$RocketEntityImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      stages: json['stages'] as int?,
      type: json['type'] as String?,
      country: json['country'] as String?,
      description: json['description'] as String?,
      company: json['company'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$RocketEntityImplToJson(_$RocketEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'stages': instance.stages,
      'type': instance.type,
      'country': instance.country,
      'description': instance.description,
      'company': instance.company,
      'active': instance.active,
    };
