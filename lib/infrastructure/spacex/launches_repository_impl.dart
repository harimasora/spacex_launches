import 'package:injectable/injectable.dart';
import 'package:spacex_launches/domain/core/exceptions.dart';
import 'package:spacex_launches/domain/core/platform/i_network_info.dart';
import 'package:spacex_launches/domain/core/value_objects.dart';
import 'package:spacex_launches/domain/spacex/i_launches_local_data_source.dart';
import 'package:spacex_launches/domain/spacex/i_launches_remote_data_source.dart';
import 'package:spacex_launches/domain/spacex/i_launches_repository.dart';
import 'package:spacex_launches/domain/spacex/spacex_failures.dart';
import 'package:spacex_launches/domain/spacex/launch.dart';

import 'package:spacex_launches/locator.dart';

@LazySingleton(as: ILaunchesRepository)
class LaunchesRepositoryImpl implements ILaunchesRepository {
  final remoteDataSource = locator<ILaunchesRemoteDataSource>();
  final localDataSource = locator<ILaunchesLocalDataSource>();
  final networkInfo = locator<INetworkInfo>();

  LaunchesRepositoryImpl();

  @override
  Future<Either<SpaceXFailure, List<Launch>>> getLaunches() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getLaunches();

        await localDataSource.cacheLaunches(result);
        return Either.right(result.map((e) => e.toDomain()).toList());
      } on ServerException {
        return const Either.left(SpaceXFailure.serverFailure());
      }
    } else {
      try {
        final cached = await localDataSource.getLastLaunches();
        return Either.right(cached.map((e) => e.toDomain()).toList());
      } on CacheException {
        return const Either.left(SpaceXFailure.cacheFailure());
      }
    }
  }
}
