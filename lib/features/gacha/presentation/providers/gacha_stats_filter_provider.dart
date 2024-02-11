import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/gacha_rule_type.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/usecases/get_recorded_gacha_pools.dart';
import 'states/gacha_stats_filter_state.dart';

part 'gacha_stats_filter_provider.g.dart';

@riverpod
class GachaStatsFilter extends _$GachaStatsFilter {
  @override
  GachaStatsFilterState build() {
    _getRecordedPools();
    return GachaStatsFilterState.init();
  }

  void select(String? value) {
    if (value == state.value) {
      return;
    }
    state = state.copyWith(value: value);
  }

  Future<void> _getRecordedPools() async {
    const noParams = NoParams();
    final getPoolsTask = ref
        .read(getCachedUserProvider)
        .call(noParams)
        .map(
          (user) => GetRecordedGachaPoolsParams(
            uid: user.uid,
            includeRuleTypes: GachaRuleType.independentGuarantee,
          ),
        )
        .map(ref.read(getRecordedGachaPoolsProvider).call);
    await TaskEither.flatten(getPoolsTask)
        .match(
          (_) {},
          (pools) => state = state.copyWith(source: pools),
        )
        .run();
  }
}
