import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

abstract class Failure {}

@freezed
class ValueFailure<T> extends Failure with _$ValueFailure<T> {
  const factory ValueFailure.unexpected({required T failedValue}) = _Unexpected<T>;
}
