import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_example/src/features/launches/domain/entities/launch_rocket_entity.dart';
import 'package:graphql_example/src/features/launches/domain/entities/launch_site_entity.dart';

part 'launch_entity.freezed.dart';
part 'launch_entity.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class LaunchModel with _$LaunchModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LaunchModel({
    String? id,
    String? details,
    DateTime? launchDateUnix,
    String? missionName,
    bool? launchSuccess,
    bool? upcoming,
    LaunchRocketEntity? rocket,
    LaunchSiteEntity? launchSite,
  }) = _LaunchModel;
  const LaunchModel._();
  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);

  static List<LaunchModel> fromJsonList(dynamic json) {
    return List<Map<String, dynamic>>.from(json)
        .map(LaunchModel.fromJson)
        .toList();
  }
}
