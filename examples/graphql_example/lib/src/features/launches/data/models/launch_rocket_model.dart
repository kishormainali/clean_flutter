import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_rocket_model.freezed.dart';
part 'launch_rocket_model.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class LaunchRocketModel with _$LaunchRocketModel {
  const factory LaunchRocketModel({
    required RocketModel rocket,
  }) = _LaunchRocketModel;
  factory LaunchRocketModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchRocketModelFromJson(json);
}

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class RocketModel with _$RocketModel {
  const RocketModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RocketModel({
    required String id,
    required String name,
    required int stages,
    required String type,
    required String firstFlight,
    required String country,
    required String description,
    required String company,
    required bool active,
  }) = _RocketModel;
  factory RocketModel.fromJson(Map<String, dynamic> json) =>
      _$RocketModelFromJson(json);
}
