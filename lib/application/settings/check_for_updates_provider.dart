import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../core/providers/package_info_provider.dart';
import '../../infrastructure/settings/settings_repository.dart';
import 'states/check_for_updates_state.dart';

final checkForUpdatesProvider = StateNotifierProvider.autoDispose<
    CheckForUpdatesNotifier, CheckForUpdatesState>(
  (ref) => CheckForUpdatesNotifier(
    ref.watch(packageInfoProvider),
    ref.watch(settingsRepositoryProvider),
  ),
);

class CheckForUpdatesNotifier extends StateNotifier<CheckForUpdatesState> {
  CheckForUpdatesNotifier(
    this._packageInfo,
    this._repository,
  ) : super(CheckForUpdatesState.init()) {
    Future.delayed(const Duration(seconds: 2), checkForUpdates);
  }

  final PackageInfo _packageInfo;
  final SettingsRepository _repository;

  Future<void> checkForUpdates({bool isManually = false}) async {
    state = state.copyWith(
      isChecking: true,
      isManually: isManually,
      currentVersion: 'v${_packageInfo.version}',
      failureOrLatestReleaseOption: none(),
    );
    final failureOrLatest = await _repository.fetchLatestRelease();
    state = failureOrLatest.fold(
      (failure) => state.copyWith(
        isChecking: false,
        failureOrLatestReleaseOption: optionOf(left(failure)),
      ),
      (latest) => state.copyWith(
        isChecking: false,
        failureOrLatestReleaseOption: optionOf(right(latest)),
      ),
    );
  }
}
