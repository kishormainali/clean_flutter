import 'package:clean_bloc/clean_bloc.dart';
import 'package:clean_network/clean_network.dart';
import 'package:example/src/features/users/domain/models/user_model.dart';
import 'package:example/src/features/users/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserCubit extends PaginatedCleanCubit<UserModel> {
  final UserRepository _repository;

  UserCubit(this._repository) {
    init();
  }

  @override
  Pagination get initialPage =>
      const Pagination.page(currentPage: 1, perPage: 6);

  @override
  PaginatedEitherResponse<UserModel> Function(Pagination pagination)
      get remoteCall {
    return (pagination) {
      final params = pagination as PagePagination;
      return _repository.getUsers(
        page: params.currentPage,
        limit: params.perPage,
      );
    };
  }
}
