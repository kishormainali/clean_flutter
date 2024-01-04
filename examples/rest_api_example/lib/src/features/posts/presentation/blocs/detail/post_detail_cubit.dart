import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';
import 'package:rest_api_example/src/features/posts/domain/repository/post_repository.dart';

part 'post_detail_cubit.freezed.dart';
part 'post_detail_state.dart';

@injectable
class PostDetailCubit extends Cubit<PostDetailState> {
  PostDetailCubit(this._repository) : super(const PostDetailState.initial());
  final PostRepository _repository;

  void getDetails(int id) async {
    emit(const PostDetailState.loading());
    final response = await _repository.getSinglePost(id).run();
    emit(response.fold(
      (error) => PostDetailState.error(error.message),
      (data) => PostDetailState.success(data),
    ));
  }
}
