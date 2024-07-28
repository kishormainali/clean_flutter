import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_site_entity.freezed.dart';
part 'launch_site_entity.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class LaunchSiteEntity with _$LaunchSiteEntity {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LaunchSiteEntity({
    String? siteId,
    String? siteName,
    String? siteNameLong,
  }) = _LaunchSiteEntity;
  const LaunchSiteEntity._();
  factory LaunchSiteEntity.fromJson(Map<String, dynamic> json) =>
      _$LaunchSiteEntityFromJson(json);
}
