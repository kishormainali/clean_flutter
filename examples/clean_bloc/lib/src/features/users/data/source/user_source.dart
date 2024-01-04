import 'package:clean_network/clean_network.dart';
import 'package:example/src/features/users/domain/models/user_model.dart';
import 'package:fp_util/fp_util.dart';
import 'package:injectable/injectable.dart';

abstract class UserSource {
  CleanResponse<PaginatedResponse<UserModel>> getUsers({
    required int page,
    required int limit,
  });
}

@LazySingleton(as: UserSource)
class UserSourceImpl extends BaseSource with LoggerMixin implements UserSource {
  UserSourceImpl(super.client);

  @override
  CleanResponse<PaginatedResponse<UserModel>> getUsers({
    required int page,
    required int limit,
  }) {
    return get(
      '/users',
      queryParameters: {
        'page': page,
        'per_page': limit,
      },
      onSuccess: (response) => PaginatedResponse<UserModel>.fromJson(
        response,
        UserModel.fromJson,
      ),
    );
  }
}
