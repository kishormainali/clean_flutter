// ignore_for_file: one_member_abstracts

import 'package:clean_network/clean_core.dart';
import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/users/domain/models/user_model.dart';

abstract class UserSource {
  Future<PaginatedResponse<UserModel>> getUsers({
    required int page,
    required int limit,
  });
}

@LazySingleton(as: UserSource)
class UserSourceImpl extends RestSource implements UserSource {
  UserSourceImpl(super.client);

  @override
  Future<PaginatedResponse<UserModel>> getUsers({
    required int page,
    required int limit,
  }) {
    return getUri(
      Uri.parse('https://reqres.in/api/users'),
      onSuccess: (response) => PaginatedResponse.fromJson(
        response as Map<String, dynamic>,
        UserModel.fromJson,
      ),
    );
  }
}
