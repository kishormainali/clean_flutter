# Clean Bloc

Clean Bloc is a wrapper around the [bloc](https://pub.dev/packages/bloc) package that helps implement the Clean Architecture design pattern.

## Getting Started

### Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  clean_bloc: latest
```

### Usage

#### Paginated Clean Cubit

```dart

import 'package:clean_bloc/clean_bloc.dart';
import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';


@injectable
class UserCubit extends PaginatedCleanCubit<UserModel> {
  final UserRepository _repository;

  UserCubit(this._repository) {
    init();
  }

  @override
  Pagination get initialPage =>
      const Pagination.page(currentPage: 1, perPage: 6);

  @override
  PaginatedEitherResponse<UserModel> Function(Pagination pagination)
      get remoteCall {
    return (pagination) {
      final params = pagination as PagePagination;
      return _repository.getUsers(
        page: params.currentPage,
        limit: params.perPage,
      );
    };
  }
}
```

### Clean Cubit

```dart
import 'package:clean_bloc/clean_bloc.dart';
import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserCubit extends CleanCubit<UserModel> {
  final UserRepository _repository;

  UserCubit(this._repository) {
    init();
  }

  @override
  EitherResponse<UserModel> Function() get remoteCall {
    return () => _repository.getUser();
  }
}
```

### Create Event for Clean Bloc

```dart
import 'package:clean_bloc/clean_bloc.dart';

class UserAddEvent extends CleanEvent {
  @override
  List<Object?> get props => [];
}

```

### Clean Bloc

```dart
import 'package:clean_bloc/clean_bloc.dart';
import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserBloc extends CleanBloc<UserModel> {
  final UserRepository _repository;

  UserBloc(this._repository) {
    init();
    on<UserAddEvent>(_handleAddEvent);
  }

  @override
  EitherResponse<UserModel> Function() get remoteCall {
    return () => _repository.getUser();
  }


   /// Handle [CleanEventInit] event
  FutureOr<void> _handleAddEvent(
      UserAddEvent event, Emitter<CleanState<T>> emit) async {
   /// Do something
  }

}
```

### Create Event for Paginated Clean Bloc

```dart
import 'package:clean_bloc/clean_bloc.dart';


class UserAddEvent extends PaginatedCleanEvent {
  @override
  List<Object?> get props => [];
}

```

### Paginated Clean Bloc

```dart
import 'package:clean_bloc/clean_bloc.dart';
import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserBloc extends PaginatedCleanBloc<UserModel> {
  final UserRepository _repository;

  UserBloc(this._repository) {
    init();
    on<UserAddEvent>(_handleAddEvent);
  }

  @override
  Pagination get initialPage =>
      const Pagination.page(currentPage: 1, perPage: 6);

  @override
  PaginatedEitherResponse<UserModel> Function(Pagination pagination)
      get remoteCall {
    return (pagination) {
      final params = pagination as PagePagination;
      return _repository.getUsers(
        page: params.currentPage,
        limit: params.perPage,
      );
    };
  }


/// Handle [UserAddEvent] event
FutureOr<void> _handleAddEvent(
    UserAddEvent event, 
    Emitter<PaginatedCleanState<T>> emit,
    ) async {   
    /// Do something
    }

}
```


### Use Clean Bloc

```dart
import 'package:auto_route/auto_route.dart';
import 'package:clean_bloc/clean_bloc.dart';
import 'package:example/src/core/di/injector.dart';
import 'package:example/src/features/users/domain/models/user_model.dart';
import 'package:example/src/features/users/presentation/blocs/list/user_cubit.dart';
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
        if (notification is ScrollEndNotification &&
            notification.metrics.extentAfter == 0) {
          context.read<UserCubit>().fetchMore();
          return true;
        }
        return false;
      },
      child: PaginatedCleanBuilder<UserCubit, UserModel>(
        successBuilder: (context, users, isLoadingMore) {
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
```


## For more information check example project
- [Example](https://github.com/kishormainali/clean_bloc/tree/main/example)