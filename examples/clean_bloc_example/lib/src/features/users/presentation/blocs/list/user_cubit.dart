import 'package:clean_bloc/clean_bloc.dart';
import 'package:clean_bloc_example/src/features/users/domain/models/user_model.dart';
import 'package:clean_bloc_example/src/features/users/domain/repository/user_repository.dart';
import 'package:clean_network/clean_core.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserCubit extends PaginatedCleanCubit<UserModel> {
  final UserRepository _repository;

  UserCubit(this._repository) {
    init();
  }

  @override
  Pagination get initialPage => const Pagination.page(currentPage: 1, perPage: 6);

  @override
  PaginatedEitherResponse<UserModel> remoteCall(Pagination page) {
    final params = page as PagePagination;
    return _repository.getUsers(
      page: params.currentPage,
      limit: params.perPage,
    );
  }
}
