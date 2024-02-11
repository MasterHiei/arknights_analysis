import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/entities/gacha_char.dart';
import '../../domain/usecases/get_cached_gacha_history.dart';
import 'gacha_history_filter_provider.dart';

part 'get_gacha_history_provider.g.dart';

@riverpod
class GetGachaHistory extends _$GetGachaHistory {
  @override
  AsyncValue<List<GachaChar>> build() {
    _get();
    return const AsyncValue.loading();
  }

  Future<void> _get() async {
    final filter = ref.watch(gachaHistoryFilterProvider);
    const noParams = NoParams();
    final getHistoryTask = ref
        .read(getCachedUserProvider)
        .call(noParams)
        .map(
          (user) => GetCachedGachaHistoryParams(
            uid: user.uid,
            showAllPools: filter.showAllPools,
            pools: filter.selectedPools,
            rarities: filter.selectedRarities,
          ),
        )
        .map(ref.read(getCachedGachaHistoryProvider).call);

    state = await TaskEither.flatten(getHistoryTask)
        .match(
          (failure) => failure.toAsyncError<List<GachaChar>>(),
          AsyncValue.data,
        )
        .run();
  }
}
