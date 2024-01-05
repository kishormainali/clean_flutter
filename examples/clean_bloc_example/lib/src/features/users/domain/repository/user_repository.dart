import 'package:clean_bloc_example/src/features/users/domain/models/user_model.dart';
import 'package:clean_network/clean_network.dart';

abstract class UserRepository {
  PaginatedEitherResponse<UserModel> getUsers({
    required int page,
    required int limit,
  });
}
