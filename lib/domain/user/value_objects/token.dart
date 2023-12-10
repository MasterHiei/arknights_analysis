import 'package:fpdart/fpdart.dart';

import '../../core/validators/validate_token.dart';
import '../../core/value_failure.dart';
import '../../core/value_object.dart';

class Token extends ValueObject<String> {
  factory Token(String value) {
    return Token._(validateToken(value));
  }

  const Token._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
