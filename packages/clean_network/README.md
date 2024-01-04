# Clean Network

`CleanNetwork` is wrapper around dio and gql to make it easier to make network requests.

[![pub package](https://img.shields.io/pub/v/clean_network.svg)](https://pub.dev/packages/clean_network)   


## Get started

### 1. Add dependency

```yaml
dependencies:
  clean_network: latest
```

### 2. Import package

```dart
import 'package:clean_network/clean_network.dart';
```

### 3. Initialize in dependency injection
```dart
import 'package:clean_network/clean_network.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModules {
  @lazySingleton
  CleanClient get client => CleanClient(
        options: const CleanBaseOptions(
          baseUrl: 'https://jsonplaceholder.typicode.com',
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
}
```

### 4. Create remote source
```dart
import 'package:clean_network/clean_network.dart';
import 'package:example/src/features/posts/data/models/post_model.dart';
import 'package:injectable/injectable.dart';

abstract class PostSource {
  CleanResponse<List<PostModel>> getPosts();
  CleanResponse<PostModel> getSinglePost(int id);
}

@LazySingleton(as: PostSource)
class PostSourceImpl extends BaseSource implements PostSource {
  PostSourceImpl(super.client);

  @override
  CleanResponse<List<PostModel>> getPosts() {
    return get(
      '/posts',
      onSuccess: PostModel.fromJsonList,
    );
  }

  @override
  CleanResponse<PostModel> getSinglePost(int id) {
    return get(
      '/posts/$id',
      onSuccess: PostModel.fromJson,
    );
  }
}
```

### 5. Create repository
```dart
import 'package:example/src/core/network/base.dart';
import 'package:example/src/features/posts/data/models/post_model.dart';
import 'package:example/src/features/posts/data/source/post_source.dart';
import 'package:example/src/features/posts/domain/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PostRepository)
class PostRepositoryImpl extends BaseRepository implements PostRepository {
  final PostSource _postSource;

  PostRepositoryImpl(this._postSource);
  @override
  EitherResponse<List<PostModel>> getPosts() {
    return handleNetwork(_postSource.getPosts);
  }

  @override
  EitherResponse<PostModel> getSinglePost(int id) {
    return handleNetwork(
      () => _postSource.getSinglePost(id),
    );
  }
}
```


