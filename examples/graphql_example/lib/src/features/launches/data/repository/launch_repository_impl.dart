import 'package:clean_graphql/clean_core.dart';
import 'package:graphql_example/src/features/launches/domain/entities/launch_entity.dart';
import 'package:graphql_example/src/features/launches/domain/repository/launch_repository.dart';
import 'package:injectable/injectable.dart';

import '../source/launch_source.dart';

@LazySingleton(as: LaunchRepository)
final class LaunchRepositoryImpl extends BaseRepository implements LaunchRepository {
  const LaunchRepositoryImpl(this._launchSource);

  final LaunchSource _launchSource;

  @override
  EitherResponse<List<LaunchModel>> getLaunches() {
    return handleNetwork(
      _launchSource.getLaunches,
      onSuccess: (data) => data.launches!.map((e) => LaunchModel.fromJson(e!.toJson())).toList(),
    );
  }

  @override
  EitherResponse<LaunchModel> getLaunchDetails(String id) {
    return handleNetwork(
      () => _launchSource.getLaunchDetails(id),
      onSuccess: (data) => LaunchModel.fromJson(data.toJson()),
    );
  }
}
