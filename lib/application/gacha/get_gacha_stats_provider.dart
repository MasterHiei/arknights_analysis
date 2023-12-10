import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/enums/gacha_rule_type.dart';
import '../../core/exceptions/app_failure.dart';
import '../../domain/gacha/gacha_stats.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'params/get_gacha_stats_params.dart';

part 'get_gacha_stats_provider.g.dart';

@riverpod
class GetGachaStats extends _$GetGachaStats {
  @override
  Future<GachaStats> build({String? pool}) => _getStats(pool);

  late GetGachaStatsParams _params;

  Future<GachaStats> _getStats(String? pool) async {
    if (pool == null) {
      // 全部寻访
      _params = GetGachaStatsParams.all();
    } else if (pool == GachaRuleType.normal.label) {
      // 标准寻访
      _params = GetGachaStatsParams.normal();
    } else if (pool == GachaRuleType.classic.label) {
      // 中坚寻访
      _params = GetGachaStatsParams.classics();
    } else {
      // 指定寻访
      _params = GetGachaStatsParams.specific(pool);
    }
    return ref.watch(userProvider).match(
      () => throw const AppFailure.invalidToken(),
      (user) async {
        final task = ref.read(gachaRepositoryProvider).getStats(
              user.uid,
              pools: _params.pools,
              includeRuleTypes: _params.includeRuleTypes,
              excludeRuleTypes: _params.excludeRuleTypes,
            );
        return (await task.run()).match(
          (failure) => throw failure,
          (stats) => stats,
        );
      },
    );
  }
}
