// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchModelImpl _$$LaunchModelImplFromJson(Map<String, dynamic> json) =>
    _$LaunchModelImpl(
      id: json['id'] as String,
      details: json['details'] as String? ?? '',
      launchDateUnix: json['launch_date_unix'] as int,
      missionName: json['mission_name'] as String,
      launchSuccess: json['launch_success'] as bool?,
      upcoming: json['upcoming'] as bool,
      rocket:
          LaunchRocketModel.fromJson(json['rocket'] as Map<String, dynamic>),
      launchSite: json['launch_site'] == null
          ? null
          : LaunchSiteModel.fromJson(
              json['launch_site'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LaunchModelImplToJson(_$LaunchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
      'launch_date_unix': instance.launchDateUnix,
      'mission_name': instance.missionName,
      'launch_success': instance.launchSuccess,
      'upcoming': instance.upcoming,
      'rocket': instance.rocket,
      'launch_site': instance.launchSite,
    };
