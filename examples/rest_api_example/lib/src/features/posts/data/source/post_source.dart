import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';

abstract class PostSource {
  Future<List<PostModel>> getPosts();
  Future<PostModel> getSinglePost(int id);
}

@LazySingleton(as: PostSource)
class PostSourceImpl extends RestSource implements PostSource {
  PostSourceImpl(super.client);

  @override
  Future<List<PostModel>> getPosts() {
    return get('/posts', onSuccess: PostModel.fromJsonList);
  }

  @override
  Future<PostModel> getSinglePost(int id) {
    return get(
      '/posts/$id',
      onSuccess: (response) =>
          PostModel.fromJson(response as Map<String, dynamic>),
    );
  }
}
