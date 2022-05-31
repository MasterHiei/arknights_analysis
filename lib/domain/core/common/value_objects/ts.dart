import 'package:dartz/dartz.dart';

import '../../validators/validate_ts.dart';
import '../../value_failure.dart';
import '../../value_object.dart';

class Ts extends ValueObject<int> {
  const Ts._(this.value);

  factory Ts(int value) {
    return Ts._(validateTs(value));
  }

  @override
  final Either<ValueFailure<int>, int> value;

  DateTime get dateTime =>
      DateTime.fromMillisecondsSinceEpoch(getOrCrash() * 1000);
}
