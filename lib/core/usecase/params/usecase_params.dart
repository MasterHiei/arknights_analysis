import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/value_objects/token.dart';
import '../../common/value_objects/uid.dart';
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
