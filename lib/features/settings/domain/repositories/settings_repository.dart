import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../entities/latest_release.dart';

abstract class SettingsRepository {
  TaskEither<AppFailure, LatestRelease> fetchLatestRelease(
    NoParams params,
  );
}
