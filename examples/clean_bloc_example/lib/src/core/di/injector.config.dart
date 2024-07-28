// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_bloc_example/src/core/di/third_party_modules.dart' as _i9;
import 'package:clean_bloc_example/src/core/routes/app_router.dart' as _i3;
import 'package:clean_bloc_example/src/features/users/data/repository/user_repository_impl.dart'
    as _i7;
import 'package:clean_bloc_example/src/features/users/data/source/user_source.dart'
    as _i5;
import 'package:clean_bloc_example/src/features/users/domain/repository/user_repository.dart'
    as _i6;
import 'package:clean_bloc_example/src/features/users/presentation/blocs/list/user_cubit.dart'
    as _i8;
import 'package:clean_network/clean_network.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.lazySingleton<_i5.UserSource>(() => _i5.UserSourceImpl(gh<dynamic>()));
    gh.lazySingleton<_i6.UserRepository>(
        () => _i7.UserRepositoryImpl(gh<_i5.UserSource>()));
    gh.factory<_i8.UserCubit>(() => _i8.UserCubit(gh<_i6.UserRepository>()));
    return this;
  }
}

class _$ThirdPartyModules extends _i9.ThirdPartyModules {}
