import 'package:dartz/dartz.dart';

import '../../core/validators/validate_token.dart';
import '../../core/value_failure.dart';
import '../../core/value_object.dart';

class Token extends ValueObject<String> {
  const Token._(this.value);

  factory Token(String value) {
    return Token._(validateToken(value));
  }

  @override
  final Either<ValueFailure<String>, String> value;
}
