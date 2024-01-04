part of 'post_list_cubit.dart';

@freezed
class PostListState with _$PostListState {
  const factory PostListState.initial() = _Initial;
  const factory PostListState.loading() = _Loading;
  const factory PostListState.error(String message) = _Error;
  const factory PostListState.success(List<PostModel> posts) = _Loaded;
}
