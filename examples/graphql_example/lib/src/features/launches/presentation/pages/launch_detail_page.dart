import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fp_util/fp_util.dart';
import 'package:graphql_example/src/core/di/injector.dart';
import 'package:graphql_example/src/features/launches/presentation/blocs/details/launch_detail_cubit.dart';

@RoutePage()
class LaunchDetailPage extends StatelessWidget {
  const LaunchDetailPage({
    @pathParam required this.id, super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LaunchDetailCubit>()..getLaunchDetails(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Launch Detail'),
        ),
        body: BlocBuilder<LaunchDetailCubit, LaunchDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (message) => Center(child: Text(message)),
              success: (launch) => Column(
                children: [
                  Text(launch.rocket!.rocket!.name!),
                  Sizes.gap8,
                  Text(launch.missionName!),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
