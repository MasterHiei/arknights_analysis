import '../value_failure.dart';

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure<dynamic> valueFailure;

  @override
  String toString() => Error.safeToString('ValueFailure: $valueFailure');
}
