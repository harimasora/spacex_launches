// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'domain/core/platform/i_network_info.dart' as _i11;
import 'domain/spacex/i_launches_local_data_source.dart' as _i5;
import 'domain/spacex/i_launches_remote_data_source.dart' as _i7;
import 'domain/spacex/i_launches_repository.dart' as _i9;
import 'infrastructure/core/graphql_injecatble_module.dart' as _i15;
import 'infrastructure/core/platform/data_connection_checker.dart' as _i3;
import 'infrastructure/core/platform/network_info_impl.dart' as _i12;
import 'infrastructure/core/platform/platform_injectable_module.dart' as _i14;
import 'infrastructure/spacex/launches_local_data_source.dart' as _i6;
import 'infrastructure/spacex/launches_remote_data_source.dart' as _i8;
import 'infrastructure/spacex/launches_repository_impl.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final graphQLInjectableModule = _$GraphQLInjectableModule();
  gh.lazySingleton<_i3.DataConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i4.GraphQLClient>(() => graphQLInjectableModule.client);
  gh.lazySingleton<_i5.ILaunchesLocalDataSource>(
      () => _i6.LaunchesLocalDataSourceImpl());
  gh.lazySingleton<_i7.ILaunchesRemoteDataSource>(
      () => _i8.LaunchesRemoteDataSourceImpl(get<_i4.GraphQLClient>()));
  gh.lazySingleton<_i9.ILaunchesRepository>(
      () => _i10.LaunchesRepositoryImpl());
  gh.lazySingleton<_i11.INetworkInfo>(() => _i12.NetworkInfoImpl());
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => firebaseInjectableModule.sharedPreferences,
      preResolve: true);
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}

class _$GraphQLInjectableModule extends _i15.GraphQLInjectableModule {}
