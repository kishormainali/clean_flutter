// ignore_for_file: one_member_abstracts

import 'package:clean_bloc_example/src/features/users/domain/models/user_model.dart';
import 'package:clean_network/clean_core.dart';

abstract class UserRepository {
  PaginatedResult<UserModel> getUsers({
    required int page,
    required int limit,
  });
}
