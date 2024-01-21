import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/value_objects/token.dart';
import '../../common/value_objects/uid.dart';
import '../../enums/gacha_rule_type.dart';
import '../../enums/rarity.dart';
import '../../enums/user_channel.dart';

part 'usecase_params.freezed.dart';

@freezed
class UsecaseParams with _$UsecaseParams {
  const factory UsecaseParams.no() = NoParams;

  const factory UsecaseParams.fetchGameData({
    @Default(false) bool force,
  }) = FetchGameDataParams;

  const factory UsecaseParams.cacheUserChannel({
    required UserChannel channel,
  }) = CacheUserChannelParams;

  const factory UsecaseParams.cacheToken({
    required Token token,
  }) = CacheTokenParams;

  const factory UsecaseParams.fetchUser({
    required UserChannel channel,
    required Token token,
  }) = FetchUserParams;

  const factory UsecaseParams.getCachedGachaHistory({
    required Uid uid,
    required bool showAllPools,
    required List<String> pools,
    required List<Rarity> rarities,
  }) = GetCachedGachaHistoryParams;

  const factory UsecaseParams.fetchGachaHistory({
    required Uid uid,
    required Token token,
    @Default(1) int page,
    required UserChannel channel,
  }) = FetchGachaHistoryParams;

  const factory UsecaseParams.getRecordedGachaPools({
    required Uid uid,
    @Default([]) List<GachaRuleType> includeRuleTypes,
    @Default([]) List<GachaRuleType> excludeRuleTypes,
    @Default(true) bool includeClassics,
  }) = GetRecordedGachaPoolsParams;

  const factory UsecaseParams.getGachaPool({
    required String name,
  }) = GetGachaPoolParams;

  const factory UsecaseParams.getGachaStats({
    required Uid uid,
    @Default([]) List<String> pools,
    @Default([]) List<String> excludePools,
    @Default([]) List<GachaRuleType> includeRuleTypes,
    @Default([]) List<GachaRuleType> excludeRuleTypes,
  }) = GetGachaStatsParams;

  const factory UsecaseParams.fetchDiamondHistory({
    required Uid uid,
    required Token token,
    @Default(1) int page,
    required UserChannel channel,
  }) = FetchDiamondHistoryParams;

  const factory UsecaseParams.getCachedDiamondHistory(
    Uid uid,
  ) = GetCachedDiamondHistoryParams;
}
