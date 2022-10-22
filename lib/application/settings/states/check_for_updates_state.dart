import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../domain/settings/latest_release.dart';

part 'check_for_updates_state.freezed.dart';

@freezed
class CheckForUpdatesState with _$CheckForUpdatesState {
  const factory CheckForUpdatesState({
    required bool isChecking,
    required String currentVersion,
    required Option<LatestRelease> latestReleaseOption,
    required Option<AppFailure> failureOption,
  }) = _CheckForUpdatesState;

  factory CheckForUpdatesState.init() => CheckForUpdatesState(
        isChecking: false,
        currentVersion: '',
        latestReleaseOption: none(),
        failureOption: none(),
      );

  const CheckForUpdatesState._();

  bool get hasNewVersion => latestReleaseOption.fold(
        () => false,
        (latest) => latest.version != currentVersion,
      );
}
