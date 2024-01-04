import 'package:clean_network/clean_network.dart';
import 'package:example/src/features/users/domain/models/user_model.dart';

abstract class UserRepository {
  PaginatedEitherResponse<UserModel> getUsers({
    required int page,
    required int limit,
  });
}
