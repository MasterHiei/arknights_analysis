import 'package:dartz/dartz.dart';

import '../../core/validators/validate_uid.dart';
import '../../core/value_failure.dart';
import '../../core/value_object.dart';

class Uid extends ValueObject<String> {
  const Uid._(this.value);

  factory Uid(String value) {
    return Uid._(validateUid(value));
  }

  @override
  final Either<ValueFailure<String>, String> value;
}
