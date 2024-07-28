import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_rocket_entity.freezed.dart';
part 'launch_rocket_entity.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class LaunchRocketEntity with _$LaunchRocketEntity {
  const factory LaunchRocketEntity({
    RocketEntity? rocket,
  }) = _LaunchRocketEntity;
  factory LaunchRocketEntity.fromJson(Map<String, dynamic> json) =>
      _$LaunchRocketEntityFromJson(json);
}

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class RocketEntity with _$RocketEntity {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RocketEntity({
    String? id,
    String? name,
    int? stages,
    String? type,
    String? country,
    String? description,
    String? company,
    bool? active,
  }) = _RocketEntity;
  const RocketEntity._();
  factory RocketEntity.fromJson(Map<String, dynamic> json) =>
      _$RocketEntityFromJson(json);
}
