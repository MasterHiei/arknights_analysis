import 'package:fpdart/fpdart.dart';

import '../value_failure.dart';

Either<ValueFailure<int>, int> validateTs(int value) {
  final dateTime = DateTime.fromMillisecondsSinceEpoch(value * 1000);
  final ts = dateTime.millisecondsSinceEpoch / 1000;
  if (ts == value) {
    return right(value);
  }
  return left(ValueFailure.invalidTs(failedValue: value));
}
