import 'package:clean_graphql/clean_core.dart';
import 'package:graphql_example/src/features/launches/domain/entities/launch_entity.dart';

abstract class LaunchRepository {
  FutureResult<List<LaunchModel>> getLaunches();
  FutureResult<LaunchModel> getLaunchDetails(String id);
}
