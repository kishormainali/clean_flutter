import 'package:auto_route/auto_route.dart';
import 'package:clean_bloc/clean_bloc.dart';
import 'package:clean_bloc_example/src/core/di/injector.dart';
import 'package:clean_bloc_example/src/features/users/domain/models/user_model.dart';
import 'package:clean_bloc_example/src/features/users/presentation/blocs/list/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
        ),
        body: const UserList(),
      ),
    );
  }
}

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification && notification.metrics.extentAfter == 0) {
          context.read<UserCubit>().fetchMore();
          return true;
        }
        return false;
      },
      child: PaginatedCleanBuilder<UserCubit, UserModel>(
        successBuilder: (context, users, {isLoadingMore = false}) {
          if (users.isEmpty) {
            return const Center(
              child: Text('No users found'),
            );
          }
          return ListView.builder(
            itemCount: isLoadingMore ? users.length + 1 : users.length,
            itemBuilder: (context, index) {
              if (index == users.length && isLoadingMore) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              }
            },
          );
        },
      ),
    );
  }
}
