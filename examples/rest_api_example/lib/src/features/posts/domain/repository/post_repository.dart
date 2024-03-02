import 'package:clean_network/clean_core.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';

abstract class PostRepository {
  EitherResponse<List<PostModel>> getPosts();
  EitherResponse<PostModel> getSinglePost(int id);
}
