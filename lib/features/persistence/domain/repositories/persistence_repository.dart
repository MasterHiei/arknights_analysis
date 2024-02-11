import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';

abstract class PersistenceRepository {
  IOEither<AppFailure, Option<DateTime>> getLastUpdateDateTime(NoParams params);

  TaskEither<AppFailure, Unit> cacheLastUpdateDateTime(NoParams params);

  TaskEither<AppFailure, Unit> import(ImportPersistenceDataParams params);

  TaskEither<AppFailure, File> export(ExportPersistenceDataParams params);
}
