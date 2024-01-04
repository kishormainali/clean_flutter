import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/users/domain/repository/user_repository.dart';

import '../../../domain/models/user_model.dart';

part 'user_list_cubit.freezed.dart';
part 'user_list_state.dart';

@injectable
class UserListCubit extends Cubit<UserListState> {
  UserListCubit(this._repository) : super(const UserListState.initial());
  final UserRepository _repository;

  @postConstruct
  void init() async {
    emit(const UserListState.loading());
    final response = await _repository.getUsers(page: 1, limit: 10).run();
    emit(response.match(
      (error) => UserListState.error(message: error.message),
      (userResponse) => UserListState.loaded(users: userResponse.data),
    ));
  }
}
