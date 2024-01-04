import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';

abstract class PostSource {
  CleanResponse<List<PostModel>> getPosts();
  CleanResponse<PostModel> getSinglePost(int id);
}

@LazySingleton(as: PostSource)
class PostSourceImpl extends BaseSource implements PostSource {
  PostSourceImpl(super.client);

  @override
  CleanResponse<List<PostModel>> getPosts() {
    return get('/posts', onSuccess: PostModel.fromJsonList);
  }

  @override
  CleanResponse<PostModel> getSinglePost(int id) {
    return get(
      '/posts/$id',
      onSuccess: (response) => PostModel.fromJson(response),
    );
  }
}
