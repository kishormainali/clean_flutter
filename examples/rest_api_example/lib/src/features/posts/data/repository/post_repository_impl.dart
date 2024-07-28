import 'package:clean_network/clean_core.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';
import 'package:rest_api_example/src/features/posts/data/source/post_source.dart';
import 'package:rest_api_example/src/features/posts/domain/repository/post_repository.dart';

@LazySingleton(as: PostRepository)
final class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl(this._postSource);
  final PostSource _postSource;
  @override
  FutureResult<List<PostModel>> getPosts() {
    return Result.fromAsync(_postSource.getPosts);
  }

  @override
  FutureResult<PostModel> getSinglePost(int id) {
    return Result.fromAsync(() => _postSource.getSinglePost(id));
  }
}
