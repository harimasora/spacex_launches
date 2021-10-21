import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacex_launches/domain/core/failures.dart';
import 'package:spacex_launches/domain/spacex/value_objects.dart';

part 'launch.freezed.dart';

@freezed
class Launch with _$Launch {
  const factory Launch({
    required UniqueId id,
    required LaunchName name,
    required FlightNumber flightNumber,
    required LaunchDate launchDate,
    required ImageUrl patchUrl,
    required List<ImageUrl> images,
    required LaunchDetails details,
  }) = _Launch;

  const Launch._();

  ValueFailure<dynamic>? get failure {
    return patchUrl.value.when(left: (l) => l, right: (_) => null) ??
        images.map((valueObject) => valueObject.failure).where((o) => o != null).firstOrNull;
  }
}
