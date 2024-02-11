import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/app_failure.dart';
import '../../../domain/entities/latest_release.dart';

part 'check_for_updates_state.freezed.dart';

@freezed
class CheckForUpdatesState with _$CheckForUpdatesState {
  const factory CheckForUpdatesState({
    required bool isChecking,
    required bool isManually,
    required String currentVersion,
    required Option<Either<AppFailure, LatestRelease>>
        failureOrLatestReleaseOption,
  }) = _CheckForUpdatesState;

  factory CheckForUpdatesState.init() => const CheckForUpdatesState(
        isChecking: false,
        isManually: false,
        currentVersion: '',
        failureOrLatestReleaseOption: None(),
      );

  const CheckForUpdatesState._();

  Option<AppFailure> get failureOption => failureOrLatestReleaseOption.match(
        () => const None(),
        (failureOrLatest) => failureOrLatest.match(
          (failure) => optionOf(failure),
          (_) => const None(),
        ),
      );

  Option<LatestRelease> get latestReleaseOption =>
      failureOrLatestReleaseOption.match(
        () => const None(),
        (failureOrLatest) => failureOrLatest.match(
          (_) => const None(),
          (latest) => optionOf(latest),
        ),
      );

  bool get hasNewVersion => failureOrLatestReleaseOption.match(
        () => false,
        (failureOrLatest) => failureOrLatest.match(
          (_) => false,
          (latest) => latest.version != currentVersion,
        ),
      );
}
