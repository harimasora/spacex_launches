import 'package:spacex_launches/domain/core/failures.dart';
import 'package:spacex_launches/domain/core/value_objects.dart';
import 'package:spacex_launches/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(Either.right(const Uuid().v1()));
  }

  const UniqueId._(this.value);

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(Either.right(uniqueId));
  }
}

class LaunchName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LaunchName(String input) {
    return LaunchName._(Either.right(input));
  }

  const LaunchName._(this.value);
}

class FlightNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FlightNumber(String input) {
    return FlightNumber._(Either.right(input));
  }

  const FlightNumber._(this.value);
}

class LaunchDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory LaunchDate(DateTime input) {
    return LaunchDate._(Either.right(input));
  }

  const LaunchDate._(this.value);
}

class ImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ImageUrl(String input) {
    return ImageUrl._(validateUrl(input));
  }

  const ImageUrl._(this.value);
}

class LaunchDetails extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LaunchDetails(String input) {
    return LaunchDetails._(Either.right(input));
  }

  const LaunchDetails._(this.value);
}

class SiteName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SiteName(String input) {
    return SiteName._(Either.right(input));
  }

  const SiteName._(this.value);
}
