import 'package:clean_graphql/clean_core.dart';
import 'package:graphql_example/src/features/launches/data/source/launch_source.dart';
import 'package:graphql_example/src/features/launches/domain/entities/launch_entity.dart';
import 'package:graphql_example/src/features/launches/domain/repository/launch_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LaunchRepository)
final class LaunchRepositoryImpl implements LaunchRepository {
  const LaunchRepositoryImpl(this._launchSource);

  final LaunchSource _launchSource;

  @override
  FutureResult<List<LaunchModel>> getLaunches() {
    return Result.fromAsync(
      _launchSource.getLaunches,
      onSuccess: (data) => data.launches!.map((e) => LaunchModel.fromJson(e!.toJson())).toList(),
    );
  }

  @override
  FutureResult<LaunchModel> getLaunchDetails(String id) {
    return Result.fromAsync(
      () => _launchSource.getLaunchDetails(id),
      onSuccess: (data) => LaunchModel.fromJson(data.launch!.toJson()),
    );
  }
}
