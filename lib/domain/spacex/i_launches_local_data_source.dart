import 'package:spacex_launches/infrastructure/spacex/launch_dtos.dart';

abstract class ILaunchesLocalDataSource {
  static const cachedLaunchesKey = 'CACHED_LAUNCHES_KEY';

  /// Gets the cached [LaunchDTO] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<List<LaunchDTO>> getLastLaunches();

  Future<void> cacheLaunches(List<LaunchDTO> launchesToCache);
}
