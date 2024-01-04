import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_example/src/features/launches/data/models/launch_rocket_model.dart';
import 'package:graphql_example/src/features/launches/data/models/launch_site_model.dart';

part 'launch_model.freezed.dart';
part 'launch_model.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class LaunchModel with _$LaunchModel {
  const LaunchModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LaunchModel({
    required String id,
    @Default('') String details,
    required int launchDateUnix,
    required String missionName,
    bool? launchSuccess,
    required bool upcoming,
    required LaunchRocketModel rocket,
    LaunchSiteModel? launchSite,
  }) = _LaunchModel;
  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);

  static List<LaunchModel> fromJsonList(dynamic json) {
    return List<Map<String, dynamic>>.from(json)
        .map(LaunchModel.fromJson)
        .toList();
  }
}
