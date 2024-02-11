import 'package:fpdart/fpdart.dart';

import '../errors/value_failure.dart';

Either<ValueFailure<String>, String> validateToken(String? value) {
  if (value == null || value.isEmpty) {
    return left(ValueFailure.invalidToken(failedValue: value));
  } else {
    return right(value);
  }
}
