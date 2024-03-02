// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_network/clean_network.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:rest_api_example/src/core/di/third_party_modules.dart' as _i14;
import 'package:rest_api_example/src/core/routes/app_router.dart' as _i3;
import 'package:rest_api_example/src/features/posts/data/repository/post_repository_impl.dart'
    as _i8;
import 'package:rest_api_example/src/features/posts/data/source/post_source.dart'
    as _i5;
import 'package:rest_api_example/src/features/posts/domain/repository/post_repository.dart'
    as _i7;
import 'package:rest_api_example/src/features/posts/presentation/blocs/detail/post_detail_cubit.dart'
    as _i11;
import 'package:rest_api_example/src/features/posts/presentation/blocs/list/post_list_cubit.dart'
    as _i12;
import 'package:rest_api_example/src/features/users/data/repository/user_repository_impl.dart'
    as _i10;
import 'package:rest_api_example/src/features/users/data/source/user_source.dart'
    as _i6;
import 'package:rest_api_example/src/features/users/domain/repository/user_repository.dart'
    as _i9;
import 'package:rest_api_example/src/features/users/presentation/blocs/list/user_list_cubit.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyModules = _$ThirdPartyModules();
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.lazySingleton<_i4.CleanClient>(() => thirdPartyModules.client);
    gh.lazySingleton<_i5.PostSource>(() => _i5.PostSourceImpl(gh<dynamic>()));
    gh.lazySingleton<_i6.UserSource>(() => _i6.UserSourceImpl(gh<dynamic>()));
    gh.lazySingleton<_i7.PostRepository>(
        () => _i8.PostRepositoryImpl(gh<_i5.PostSource>()));
    gh.lazySingleton<_i9.UserRepository>(
        () => _i10.UserRepositoryImpl(gh<_i6.UserSource>()));
    gh.factory<_i11.PostDetailCubit>(
        () => _i11.PostDetailCubit(gh<_i7.PostRepository>()));
    gh.factory<_i12.PostListCubit>(
        () => _i12.PostListCubit(gh<_i7.PostRepository>())..getPosts());
    gh.factory<_i13.UserListCubit>(
        () => _i13.UserListCubit(gh<_i9.UserRepository>())..init());
    return this;
  }
}

class _$ThirdPartyModules extends _i14.ThirdPartyModules {}
