// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_site_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchSiteModelImpl _$$LaunchSiteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchSiteModelImpl(
      siteId: json['site_id'] as String,
      siteName: json['site_name'] as String,
      siteNameLong: json['site_name_long'] as String,
    );

Map<String, dynamic> _$$LaunchSiteModelImplToJson(
        _$LaunchSiteModelImpl instance) =>
    <String, dynamic>{
      'site_id': instance.siteId,
      'site_name': instance.siteName,
      'site_name_long': instance.siteNameLong,
    };
