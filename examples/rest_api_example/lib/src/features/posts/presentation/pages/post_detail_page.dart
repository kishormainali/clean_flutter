import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_example/src/core/di/injector.dart';
import 'package:rest_api_example/src/features/posts/presentation/blocs/detail/post_detail_cubit.dart';

@RoutePage()
class PostDetailPage extends StatelessWidget {
  const PostDetailPage({
    super.key,
    @pathParam required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostDetailCubit>()..getDetails(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Post Detail'),
        ),
        body: BlocBuilder<PostDetailCubit, PostDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (message) => Center(
                child: Text(message),
              ),
              success: (post) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    children: [
                      Text(
                        post.title,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        post.body,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
