import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_site_model.freezed.dart';
part 'launch_site_model.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class LaunchSiteModel with _$LaunchSiteModel {
  const LaunchSiteModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LaunchSiteModel({
    required String siteId,
    required String siteName,
    required String siteNameLong,
  }) = _LaunchSiteModel;
  factory LaunchSiteModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchSiteModelFromJson(json);
}
