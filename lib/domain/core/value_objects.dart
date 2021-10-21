import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacex_launches/domain/core/errors.dart';
import 'package:spacex_launches/domain/core/failures.dart';

part 'value_objects.freezed.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throw an [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.when(left: (left) => throw UnexpectedValueError(left), right: (right) => right);
  }

  bool get isValid => value.when(left: (left) => false, right: (right) => true);

  ValueFailure<dynamic>? get failure => value.when(left: (left) => left, right: (right) => null);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';
}

@freezed
class Either<L, R> with _$Either<L, R> {
  const Either._();
  const factory Either.left(L left) = Left<L, R>;
  const factory Either.right(R right) = Right<L, R>;

  Either<L, R> flatMap(Either<L, R> Function(R rightValue) validatorFunction) {
    return when(left: (left) => Either.left(left), right: (right) => validatorFunction(right));
  }
}

class Unit {
  const Unit._internal();
  @override
  String toString() => '()';
}

const Unit unit = Unit._internal();
