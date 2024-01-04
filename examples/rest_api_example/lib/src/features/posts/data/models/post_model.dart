import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class PostModel with _$PostModel {
  const PostModel._();
  const factory PostModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostModel;
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  static List<PostModel> fromJsonList(dynamic json) {
    return List<Map<String, dynamic>>.from(json)
        .map(PostModel.fromJson)
        .toList();
  }
}
