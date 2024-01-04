// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_network/clean_network.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_example/src/core/di/third_party_modules.dart' as _i10;
import 'package:graphql_example/src/core/routes/app_router.dart' as _i3;
import 'package:graphql_example/src/features/launches/data/repository/launch_repository_impl.dart'
    as _i7;
import 'package:graphql_example/src/features/launches/data/source/launch_source.dart'
    as _i5;
import 'package:graphql_example/src/features/launches/domain/repository/launch_repository.dart'
    as _i6;
import 'package:graphql_example/src/features/launches/presentation/blocs/details/launch_detail_cubit.dart'
    as _i8;
import 'package:graphql_example/src/features/launches/presentation/blocs/list/launch_list_cubit.dart'
    as _i9;
import 'package:injectable/injectable.dart' as _i2;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final thirdPartyModules = _$ThirdPartyModules();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.lazySingleton<_i4.CleanNetwork>(() => thirdPartyModules.client);
  gh.lazySingleton<_i5.LaunchSource>(
      () => _i5.LaunchSourceImpl(gh<_i4.CleanNetwork>()));
  gh.lazySingleton<_i6.LaunchRepository>(
      () => _i7.LaunchRepositoryImpl(gh<_i5.LaunchSource>()));
  gh.factory<_i8.LaunchDetailCubit>(
      () => _i8.LaunchDetailCubit(gh<_i6.LaunchRepository>()));
  gh.factory<_i9.LaunchListCubit>(
      () => _i9.LaunchListCubit(gh<_i6.LaunchRepository>())..getLaunches());
  return getIt;
}

class _$ThirdPartyModules extends _i10.ThirdPartyModules {}
