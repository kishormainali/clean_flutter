import 'package:clean_graphql/clean_core.dart';
import 'package:clean_graphql/clean_graphql.dart';
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.data.gql.dart';
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.req.gql.dart';
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.data.gql.dart';
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.req.gql.dart';
import 'package:injectable/injectable.dart';

abstract class LaunchSource {
  CleanResponse<GLaunchesData> getLaunches();
  CleanResponse<GLaunchData> getLaunchDetails(String id);
}

@LazySingleton(as: LaunchSource)
class LaunchSourceImpl extends GraphSource implements LaunchSource {
  LaunchSourceImpl(super.client);

  @override
  CleanResponse<GLaunchesData> getLaunches() {
    final operationRequest = GLaunchesReq();
    return request(operationRequest: operationRequest);
  }

  @override
  CleanResponse<GLaunchData> getLaunchDetails(String id) {
    final operationRequest = GLaunchReq(
      (b) => b..vars.launchId = id,
    );
    return request(operationRequest: operationRequest);
  }
}
