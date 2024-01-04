import 'package:clean_network/clean_network.dart';
import 'package:example/src/features/users/data/source/user_source.dart';
import 'package:example/src/features/users/domain/models/user_model.dart';
import 'package:example/src/features/users/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
final class UserRepositoryImpl extends BaseRepository
    implements UserRepository {
  final UserSource source;

  const UserRepositoryImpl(this.source);

  @override
  PaginatedEitherResponse<UserModel> getUsers(
      {required int page, required int limit}) {
    return handleNetwork(
      () => source.getUsers(page: page, limit: limit),
      onSuccess: (response) => response,
    );
  }
}
