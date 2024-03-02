// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_site_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchSiteEntityImpl _$$LaunchSiteEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchSiteEntityImpl(
      siteId: json['site_id'] as String?,
      siteName: json['site_name'] as String?,
      siteNameLong: json['site_name_long'] as String?,
    );

Map<String, dynamic> _$$LaunchSiteEntityImplToJson(
        _$LaunchSiteEntityImpl instance) =>
    <String, dynamic>{
      'site_id': instance.siteId,
      'site_name': instance.siteName,
      'site_name_long': instance.siteNameLong,
    };
