import 'package:fpdart/fpdart.dart';

import '../errors/app_failure.dart';

abstract class IOUseCase<Value, Params> {
  IOEither<AppFailure, Value> call(Params params);
}

abstract class TaskUseCase<Value, Params> {
  TaskEither<AppFailure, Value> call(Params params);
}
