import 'package:clean_network/clean_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/users/domain/models/user_model.dart';
import 'package:rest_api_example/src/features/users/domain/repository/user_repository.dart';

part 'user_list_cubit.freezed.dart';
part 'user_list_state.dart';

@injectable
class UserListCubit extends Cubit<UserListState> {
  UserListCubit(this._repository) : super(const UserListState.initial());
  final UserRepository _repository;

  @postConstruct
  Future<void> init() async {
    emit(const UserListState.loading());
    final response = await _repository.getUsers(page: 1, limit: 10);
    emit(
      response.fold(
        (BaseError error) => UserListState.error(message: error.message),
        (PaginatedResponse<UserModel> response) => UserListState.loaded(users: response.data),
      ),
    );
  }
}
