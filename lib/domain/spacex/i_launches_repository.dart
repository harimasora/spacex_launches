import 'package:spacex_launches/domain/core/value_objects.dart';
import 'package:spacex_launches/domain/spacex/launch.dart';
import 'package:spacex_launches/domain/spacex/spacex_failures.dart';

abstract class ILaunchesRepository {
  Future<Either<SpaceXFailure, List<Launch>>> getLaunches();
}
