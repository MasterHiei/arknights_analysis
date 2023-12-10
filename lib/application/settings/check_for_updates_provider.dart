import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../core/providers/package_info_provider.dart';
import '../../infrastructure/settings/settings_repository.dart';
import 'states/check_for_updates_state.dart';

part 'check_for_updates_provider.g.dart';

@riverpod
class CheckForUpdates extends _$CheckForUpdates {
  SettingsRepository get _repository => ref.read(settingsRepositoryProvider);

  @override
  CheckForUpdatesState build() {
    2.seconds.delay.then((_) => checkForUpdates());
    return CheckForUpdatesState.init();
  }

  Future<void> checkForUpdates({bool isManually = false}) async {
    state = state.copyWith(
      isChecking: true,
      isManually: isManually,
      currentVersion: 'v${ref.read(packageInfoProvider).version}',
      failureOrLatestReleaseOption: none(),
    );
    final task = _repository.fetchLatestRelease();
    state = (await task.run()).match(
      (failure) => state.copyWith(
        isChecking: false,
        failureOrLatestReleaseOption: some(left(failure)),
      ),
      (latest) => state.copyWith(
        isChecking: false,
        failureOrLatestReleaseOption: some(right(latest)),
      ),
    );
  }
}
