import 'package:dartz/dartz.dart';

import '../value_failure.dart';

Either<ValueFailure<String>, String> validateUid(String value) {
  if (value.isEmpty) {
    return left(ValueFailure.invalidUid(failedValue: value));
  } else {
    return right(value);
  }
}
