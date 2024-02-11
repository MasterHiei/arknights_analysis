import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../../../core/providers/package_info_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/usecases/fetch_latest_release.dart';
import 'states/check_for_updates_state.dart';

part 'check_for_updates_provider.g.dart';

@riverpod
class CheckForUpdates extends _$CheckForUpdates {
  @override
  CheckForUpdatesState build() {
    3.seconds.delay.then((_) => checkForUpdates());
    return CheckForUpdatesState.init();
  }

  Future<void> checkForUpdates({bool isManually = false}) async {
    state = state.copyWith(
      isChecking: true,
      isManually: isManually,
      currentVersion: 'v${ref.read(packageInfoProvider).version}',
      failureOrLatestReleaseOption: const None(),
    );

    state = await ref
        .read(fetchLatestReleaseProvider)
        .call(const NoParams())
        .match(
          (failure) => state.copyWith(
            isChecking: false,
            failureOrLatestReleaseOption: some(left(failure)),
          ),
          (latest) => state.copyWith(
            isChecking: false,
            failureOrLatestReleaseOption: some(right(latest)),
          ),
        )
        .run();
  }
}
