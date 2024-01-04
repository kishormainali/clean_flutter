import 'package:clean_network/clean_network.dart';
import 'package:fp_util/fp_util.dart';
import 'package:graphql_example/src/features/launches/data/graphql/queries.dart';
import 'package:graphql_example/src/features/launches/data/models/launch_model.dart';
import 'package:injectable/injectable.dart';

abstract class LaunchSource {
  CleanResponse<List<LaunchModel>> getLaunches();
  CleanResponse<LaunchModel> getLaunchDetails(String id);
}

@LazySingleton(as: LaunchSource)
class LaunchSourceImpl extends BaseSource
    with LoggerMixin
    implements LaunchSource {
  LaunchSourceImpl(super.client);

  @override
  CleanResponse<List<LaunchModel>> getLaunches() {
    return queryOrMutation(
      request: GraphRequest.fromString(getLauncesQuery),
      onSuccess: (data) {
        return LaunchModel.fromJsonList(data['data']['launches']);
      },
    );
  }

  @override
  CleanResponse<LaunchModel> getLaunchDetails(String id) {
    return queryOrMutation(
      request: GraphRequest.fromString(getLauncesDetailsQuery,
          variables: {'launchId': id}),
      onSuccess: (data) {
        return LaunchModel.fromJson(data['data']['launch']);
      },
    );
  }
}
