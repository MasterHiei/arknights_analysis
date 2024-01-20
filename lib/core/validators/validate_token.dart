import 'package:fpdart/fpdart.dart';

import '../../domain/core/value_failure.dart';

Either<ValueFailure<String>, String> validateToken(String? value) {
  if (value == null || value.isEmpty) {
    return left(ValueFailure.invalidToken(failedValue: value));
  } else {
    return right(value);
  }
}
