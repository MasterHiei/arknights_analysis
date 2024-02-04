import 'package:fpdart/fpdart.dart';

import '../errors/value_failure.dart';

Either<ValueFailure<String>, String> validateUid(String value) =>
    switch (value.isEmpty) {
      true => left(ValueFailure.invalidUid(failedValue: value)),
      false => right(value),
    };
