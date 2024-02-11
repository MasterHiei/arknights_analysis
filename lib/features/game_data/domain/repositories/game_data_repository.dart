import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';

abstract class GameDataRepository {
  TaskEither<AppFailure, Unit> fetch(FetchGameDataParams params);
}
