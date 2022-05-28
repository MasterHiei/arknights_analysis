import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'exceptions/unexpected_value_error.dart';
import 'value_failure.dart';

abstract class _Validatable {
  bool isValid();
}

@immutable
abstract class ValueObject<T> implements _Validatable {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  T? getOrElse(T? v) => value.fold((_) => v, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
      value.fold(left, (r) => right(unit));

  @override
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
