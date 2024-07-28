import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_example/src/core/di/injector.dart';
import 'package:rest_api_example/src/core/routes/app_router.gr.dart';
import 'package:rest_api_example/src/features/posts/presentation/blocs/list/post_list_cubit.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostListCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Posts'),
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                context.pushRoute(const UsersRoute());
              },
            ),
          ],
        ),
        body: BlocBuilder<PostListCubit, PostListState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (message) => Center(
                child: Text(message),
              ),
              success: (posts) {
                if (posts.isEmpty) {
                  return const Center(
                    child: Text('No posts found'),
                  );
                }
                return ListView.separated(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return GestureDetector(
                      onTap: () {
                        context.pushRoute(PostDetailRoute(id: post.id));
                      },
                      child: ListTile(
                        title: Text(post.title),
                        subtitle: Text(post.body),
                        titleTextStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
