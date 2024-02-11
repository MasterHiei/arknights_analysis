import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/presentation/providers/refresh_user_provider.dart';
import '../../../diamond/presentation/providers/refresh_diamond_history_provider.dart';
import '../../../gacha/presentation/providers/refresh_gacha_history_provider.dart';
import '../../domain/usecases/cache_last_player_data_update_date_time.dart';
import '../../domain/usecases/get_cached_last_player_data_update_date_time.dart';
import 'last_player_data_update_date_time.dart';

part 'refresh_player_data_provider.g.dart';

@riverpod
class RefreshPlayerData extends _$RefreshPlayerData {
  @override
  AsyncValue<Unit> build() => const AsyncValue.data(unit);

  Future<void> call({
    required void Function() onFailure,
  }) async {
    const noParams = NoParams();
    await ref
        .read(getCachedLastPlayerDataUpdateDateTimeProvider)
        .call(noParams)
        .toTaskEither()
        .map(
          (lastTimeOption) => lastTimeOption.match(
            () => true,
            (lastTime) => _canRefresh(lastTime),
          ),
        )
        .match(
          (_) => _refreshAll(),
          (canRefresh) => canRefresh ? _refreshAll() : onFailure(),
        )
        .run();
  }

  bool _canRefresh(DateTime lastTime) =>
      DateTime.now().isAfter(lastTime + Constants.minRequestInterval);

  Future<void> _refreshAll() async {
    state = const AsyncValue.loading();

    await ref.read(refreshUserProvider.notifier).call();
    await Future.wait([
      ref.read(refreshGachaHistoryProvider.notifier).call(),
      ref.read(refreshDiamondHistoryProvider.notifier).call(),
    ]);

    const noParams = NoParams();
    await ref
        .read(cacheLastPlayerDataUpdateDateTimeProvider)
        .call(noParams)
        .run();
    state = const AsyncValue.data(unit);

    ref.invalidate(lastPlayerDataUpdateDateTimeProvider);
  }
}
