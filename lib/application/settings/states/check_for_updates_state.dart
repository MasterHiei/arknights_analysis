import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../domain/settings/latest_release.dart';

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

  factory CheckForUpdatesState.init() => CheckForUpdatesState(
        isChecking: false,
        isManually: false,
        currentVersion: '',
        failureOrLatestReleaseOption: none(),
      );

  const CheckForUpdatesState._();

  Option<AppFailure> get failureOption => failureOrLatestReleaseOption.match(
        () => none(),
        (failureOrLatest) => failureOrLatest.match(
          (failure) => optionOf(failure),
          (_) => none(),
        ),
      );

  Option<LatestRelease> get latestReleaseOption =>
      failureOrLatestReleaseOption.match(
        () => none(),
        (failureOrLatest) => failureOrLatest.match(
          (_) => none(),
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
