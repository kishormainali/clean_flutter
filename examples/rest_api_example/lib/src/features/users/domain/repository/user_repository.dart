import 'package:clean_network/clean_core.dart';
import 'package:rest_api_example/src/features/users/domain/models/user_model.dart';

// ignore: one_member_abstracts
abstract class UserRepository {
  PaginatedResult<UserModel> getUsers({
    required int page,
    required int limit,
  });
}
