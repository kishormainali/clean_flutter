import 'package:clean_network/clean_network.dart';
import 'package:rest_api_example/src/features/posts/data/models/post_model.dart';

abstract class PostRepository {
  EitherResponse<List<PostModel>> getPosts();
  EitherResponse<PostModel> getSinglePost(int id);
}
