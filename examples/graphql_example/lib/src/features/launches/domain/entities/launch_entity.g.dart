// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchModelImpl _$$LaunchModelImplFromJson(Map<String, dynamic> json) =>
    _$LaunchModelImpl(
      id: json['id'] as String?,
      details: json['details'] as String?,
      launchDateUnix: json['launch_date_unix'] == null
          ? null
          : DateTime.parse(json['launch_date_unix'] as String),
      missionName: json['mission_name'] as String?,
      launchSuccess: json['launch_success'] as bool?,
      upcoming: json['upcoming'] as bool?,
      rocket: json['rocket'] == null
          ? null
          : LaunchRocketEntity.fromJson(json['rocket'] as Map<String, dynamic>),
      launchSite: json['launch_site'] == null
          ? null
          : LaunchSiteEntity.fromJson(
              json['launch_site'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LaunchModelImplToJson(_$LaunchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
      'launch_date_unix': instance.launchDateUnix?.toIso8601String(),
      'mission_name': instance.missionName,
      'launch_success': instance.launchSuccess,
      'upcoming': instance.upcoming,
      'rocket': instance.rocket,
      'launch_site': instance.launchSite,
    };
