import 'package:spacex_launches/infrastructure/spacex/launch_dtos.dart';

abstract class ILaunchesRemoteDataSource {
  Future<List<LaunchDTO>> getLaunches();
}
