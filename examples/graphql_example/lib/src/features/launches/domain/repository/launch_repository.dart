import 'package:clean_network/clean_network.dart';
import 'package:graphql_example/src/features/launches/data/models/launch_model.dart';

abstract class LaunchRepository {
  EitherResponse<List<LaunchModel>> getLaunches();
  EitherResponse<LaunchModel> getLaunchDetails(String id);
}
