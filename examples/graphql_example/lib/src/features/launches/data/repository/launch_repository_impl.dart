import 'package:clean_network/clean_network.dart';
import 'package:graphql_example/src/features/launches/data/models/launch_model.dart';
import 'package:graphql_example/src/features/launches/domain/repository/launch_repository.dart';
import 'package:injectable/injectable.dart';

import '../source/launch_source.dart';

@LazySingleton(as: LaunchRepository)
final class LaunchRepositoryImpl extends BaseRepository
    implements LaunchRepository {
  const LaunchRepositoryImpl(this._launchSource);

  final LaunchSource _launchSource;

  @override
  EitherResponse<List<LaunchModel>> getLaunches() {
    return handleNetwork(_launchSource.getLaunches);
  }

  @override
  EitherResponse<LaunchModel> getLaunchDetails(String id) {
    return handleNetwork(() => _launchSource.getLaunchDetails(id));
  }
}
