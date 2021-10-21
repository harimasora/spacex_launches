// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/spacex/i_launches_repository.dart' as _i4;
import 'infrastructure/core/graphql_injecatble_module.dart' as _i6;
import 'infrastructure/spacex/launches_repository_impl.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final graphQLInjectableModule = _$GraphQLInjectableModule();
  gh.lazySingleton<_i3.GraphQLClient>(() => graphQLInjectableModule.client);
  gh.lazySingleton<_i4.ILaunchesRepository>(
      () => _i5.LaunchesRepositoryImpl(get<_i3.GraphQLClient>()));
  return get;
}

class _$GraphQLInjectableModule extends _i6.GraphQLInjectableModule {}
