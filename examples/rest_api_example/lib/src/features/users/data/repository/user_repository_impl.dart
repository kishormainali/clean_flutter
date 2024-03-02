import 'package:clean_network/clean_core.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/user_model.dart';
import '../../domain/repository/user_repository.dart';
import '../source/user_source.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl extends BaseRepository implements UserRepository {
  final UserSource source;

  const UserRepositoryImpl(this.source);

  @override
  PaginatedEitherResponse<UserModel> getUsers({
    required int page,
    required int limit,
  }) {
    return handleNetwork(
      () => source.getUsers(page: page, limit: limit),
      onSuccess: (response) => response,
    );
  }
}
