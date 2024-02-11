import 'package:fpdart/fpdart.dart';

import '../../../../core/validators/validate_uid.dart';
import '../../errors/value_failure.dart';
import 'value_object.dart';

class Uid extends ValueObject<String> {
  factory Uid(String value) {
    return Uid._(validateUid(value));
  }

  const Uid._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
