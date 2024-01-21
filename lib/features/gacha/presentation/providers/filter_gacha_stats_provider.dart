import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/gacha_rule_type.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/entities/user.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/entities/gacha_stats.dart';
import '../../domain/usecases/get_gacha_stats.dart';

part 'filter_gacha_stats_provider.g.dart';

@riverpod
class FilterGachaStats extends _$FilterGachaStats {
  @override
  AsyncValue<GachaStats> build({String? pool}) {
    _get(pool);
    return const AsyncValue.loading();
  }

  GetGachaStatsParams createParams(User user, String? pool) {
    // 全部寻访
    if (pool == null) {
      return GetGachaStatsParams(uid: user.uid);
    }

    // 标准寻访
    if (pool == GachaRuleType.normal.label) {
      return GetGachaStatsParams(
        uid: user.uid,
        excludePools: GachaRuleType.classicPools,
        excludeRuleTypes: GachaRuleType.independentGuarantee,
      );
    }

    // 中坚寻访
    if (pool == GachaRuleType.classic.label) {
      return GetGachaStatsParams(
        uid: user.uid,
        pools: GachaRuleType.classicPools,
      );
    }

    // 指定寻访
    return GetGachaStatsParams(
      uid: user.uid,
      pools: [pool],
    );
  }

  Future<void> _get(String? pool) async {
    const noParams = NoParams();
    final getStatsTask = ref
        .read(getCachedUserProvider)
        .call(noParams)
        .map((user) => createParams(user, pool))
        .map(ref.read(getGachaStatsProvider).call);
    await TaskEither.flatten(getStatsTask)
        .match(
          (failure) => failure.toAsyncError<GachaStats>(),
          AsyncValue.data,
        )
        .run();
  }
}
