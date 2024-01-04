part of 'user_list_cubit.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState.initial() = _Initial;
  const factory UserListState.loading() = _Loading;
  const factory UserListState.error({
    required String message,
  }) = _Error;
  const factory UserListState.loaded({
    required List<UserModel> users,
    @Default(false) bool isLoading,
  }) = _Loaded;
}
