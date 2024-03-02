import 'package:clean_graphql/clean_core.dart';

import '../entities/launch_entity.dart';

abstract class LaunchRepository {
  EitherResponse<List<LaunchModel>> getLaunches();
  EitherResponse<LaunchModel> getLaunchDetails(String id);
}
