import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';
import 'package:rest_api_example/src/features/posts/data/source/post_source.dart';
import 'package:rest_api_example/src/features/posts/domain/repository/post_repository.dart';

@LazySingleton(as: PostRepository)
final class PostRepositoryImpl extends BaseRepository
    implements PostRepository {
  final PostSource _postSource;

  PostRepositoryImpl(this._postSource);
  @override
  EitherResponse<List<PostModel>> getPosts() {
    return handleNetwork(_postSource.getPosts);
  }

  @override
  EitherResponse<PostModel> getSinglePost(int id) {
    return handleNetwork(
      () => _postSource.getSinglePost(id),
    );
  }
}
