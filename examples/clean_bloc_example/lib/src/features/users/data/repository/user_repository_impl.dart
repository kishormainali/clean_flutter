import 'package:clean_bloc_example/src/features/users/data/source/user_source.dart';
import 'package:clean_bloc_example/src/features/users/domain/models/user_model.dart';
import 'package:clean_bloc_example/src/features/users/domain/repository/user_repository.dart';
import 'package:clean_network/clean_core.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this.source);
  final UserSource source;

  @override
  PaginatedResult<UserModel> getUsers({required int page, required int limit}) {
    return Result.fromAsync(
      () => source.getUsers(page: page, limit: limit),
    );
  }
}
