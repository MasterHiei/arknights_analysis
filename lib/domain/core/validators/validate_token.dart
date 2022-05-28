import 'package:dartz/dartz.dart';

import '../value_failure.dart';

Either<ValueFailure<String>, String> validateToken(String value) {
  if (value.isEmpty) {
    return left(ValueFailure.invalidToken(failedValue: value));
  } else {
    return right(value);
  }
}
