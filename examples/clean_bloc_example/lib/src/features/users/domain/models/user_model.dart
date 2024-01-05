import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class UserModel with _$UserModel {
  const UserModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserModel({
    required int id,
    required String firstName,
    required String lastName,
    required String email,
    required String avatar,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  String get name => '$firstName $lastName';
}
