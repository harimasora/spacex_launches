import 'package:spacex_launches/domain/core/failures.dart';
import 'package:spacex_launches/domain/core/value_objects.dart';

Either<ValueFailure<String>, String> validateUrl(String input) {
  var urlPattern = r"(https?|http)://([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?";
  if (RegExp(urlPattern, caseSensitive: false).hasMatch(input)) {
    return Either.right(input);
  } else {
    return Either.left(ValueFailure.invalidUrl(failedValue: input));
  }
}
