import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'check_for_updates_state.freezed.dart';

@freezed
class CheckForUpdatesState with _$CheckForUpdatesState {
  const factory CheckForUpdatesState({
    required bool isChecking,
    required String currentVersion,
    required String latestVersion,
    required String downloadUrl,
    required String assetName,
    required Option<AppFailure> failureOption,
  }) = _CheckForUpdatesState;

  factory CheckForUpdatesState.init() => CheckForUpdatesState(
        isChecking: false,
        currentVersion: '',
        latestVersion: '',
        downloadUrl: '',
        assetName: '',
        failureOption: none(),
      );

  const CheckForUpdatesState._();

  bool get isLatestVersion =>
      latestVersion.isEmpty || currentVersion == latestVersion;
}
