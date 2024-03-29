import 'package:fpdart/fpdart.dart';

import '../../errors/value_failure.dart';
import '../../validators/validate_ts.dart';
import 'value_object.dart';

class Ts extends ValueObject<int> {
  factory Ts(int value) {
    return Ts._(validateTs(value));
  }

  const Ts._(this.value);

  @override
  final Either<ValueFailure<int>, int> value;

  DateTime get dateTime =>
      DateTime.fromMillisecondsSinceEpoch(getOrCrash() * 1000);
}
