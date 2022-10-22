import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../core/providers.dart';
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
  ) : super(const CheckForUpdatesState.init()) {
    Future.delayed(const Duration(milliseconds: 1500), checkForUpdates);
  }

  final PackageInfo _packageInfo;
  final SettingsRepository _repository;

  Future<void> checkForUpdates() async {
    state = const CheckForUpdatesState.checking();
    final failureOrLatest = await _repository.fetchLatestRelease();
    state = failureOrLatest.fold(
      (failure) => CheckForUpdatesState.failure(failure),
      (latest) {
        if (currentVersion == latest.version) {
          return const CheckForUpdatesState.latest();
        }
        return CheckForUpdatesState.canUpdate(latest);
      },
    );
  }

  String get currentVersion => 'v${_packageInfo.version}';
}
