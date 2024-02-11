import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/settings_repository_impl.dart';
import '../entities/latest_release.dart';
import '../repositories/settings_repository.dart';

part 'fetch_latest_release.g.dart';

@riverpod
FetchLatestRelease fetchLatestRelease(FetchLatestReleaseRef ref) =>
    FetchLatestRelease(
      ref.watch(settingsRepositoryProvider),
    );

final class FetchLatestRelease implements TaskUseCase<LatestRelease, NoParams> {
  const FetchLatestRelease(this.settingsRepository);

  final SettingsRepository settingsRepository;

  @override
  TaskEither<AppFailure, LatestRelease> call(NoParams params) =>
      settingsRepository.fetchLatestRelease(params);
}
