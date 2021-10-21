import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacex_launches/domain/core/failures.dart';

part 'spacex_failures.freezed.dart';

@freezed
class SpaceXFailure extends Failure with _$SpaceXFailure {
  const factory SpaceXFailure.unexpected() = _Unexpected;
  const factory SpaceXFailure.serverFailure() = _ServerFailure;
  const factory SpaceXFailure.cacheFailure() = _CacheFailure;
}
