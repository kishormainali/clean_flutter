import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/src/core/di/injector.dart';
import 'package:graphql_example/src/core/routes/app_router.gr.dart';
import 'package:graphql_example/src/features/launches/presentation/blocs/list/launch_list_cubit.dart';

@RoutePage()
class LaunchPage extends StatelessWidget {
  const LaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LaunchListCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Launches'),
        ),
        body: BlocBuilder<LaunchListCubit, LaunchListState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              success: (launches) {
                if (launches.isEmpty) {
                  return const Center(child: Text('No launches found'));
                }
                return ListView.builder(
                  itemCount: launches.length,
                  itemBuilder: (context, index) {
                    final launch = launches[index];
                    return GestureDetector(
                      onTap: () {
                        context.pushRoute(LaunchDetailRoute(id: launch.id));
                      },
                      child: ListTile(
                        title: Text(launch.missionName),
                        subtitle: Text(launch.rocket.rocket.name),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
