import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../domain/settings/latest_release.dart';

part 'check_for_updates_state.freezed.dart';

@freezed
class CheckForUpdatesState with _$CheckForUpdatesState {
  const factory CheckForUpdatesState.init() = _Init;

  const factory CheckForUpdatesState.checking() = _Checking;

  const factory CheckForUpdatesState.latest() = _Latest;

  const factory CheckForUpdatesState.canUpdate(
    LatestRelease latest,
  ) = _CanUpdate;

  const factory CheckForUpdatesState.failure(
    AppFailure failure,
  ) = _Failure;
}
