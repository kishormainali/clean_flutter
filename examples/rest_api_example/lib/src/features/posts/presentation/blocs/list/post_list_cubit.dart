import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';
import 'package:rest_api_example/src/features/posts/domain/repository/post_repository.dart';

part 'post_list_cubit.freezed.dart';
part 'post_list_state.dart';

@injectable
class PostListCubit extends Cubit<PostListState> {
  PostListCubit(this._repository) : super(const PostListState.initial());
  final PostRepository _repository;

  @postConstruct
  Future<void> getPosts() async {
    emit(const PostListState.loading());
    final response = await _repository.getPosts();
    emit(
      response.fold(
        (error) => PostListState.error(error.message),
        PostListState.success,
      ),
    );
  }
}
