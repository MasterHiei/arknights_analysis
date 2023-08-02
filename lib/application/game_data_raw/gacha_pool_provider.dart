import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time/time.dart';

import '../../core/exceptions/app_failure.dart';
import '../../infrastructure/game_data_api/game_data_api_repository.dart';
import '../../infrastructure/game_data_raw/game_data_raw_repository.dart';
import 'states/gacha_pool_state.dart';

final gachaPoolProvider =
    StateNotifierProvider.autoDispose<GachaPoolNotifier, GachaPoolState>(
  (ref) => GachaPoolNotifier(
    ref.watch(gameDataApiRepositoryProvider),
    ref.watch(gameDataRawRepositoryProvider),
  ),
);

class GachaPoolNotifier extends StateNotifier<GachaPoolState> {
  GachaPoolNotifier(
    this._apiRepository,
    this._repository,
  ) : super(const GachaPoolState.fetching()) {
    _fetch();
  }

  final GameDataApiRepository _apiRepository;
  final GameDataRawRepository _repository;

  Future<DateTime?> _getLastUpdateDateTime() async {
    final failureOrDateTime =
        await _apiRepository.getLastGachaTableUpdateDateTime();
    return failureOrDateTime.fold((_) => null, (dateTime) => dateTime);
  }

  Future<bool> _isNewest() async {
    final failureOrCommitDate =
        await _apiRepository.fetchLastGachaTableCommitDateTime();
    return failureOrCommitDate.fold(
      (f) => false,
      (commitDate) async {
        final lastUpdateDateTime = await _getLastUpdateDateTime();
        if (lastUpdateDateTime == null) {
          return false;
        }
        return commitDate.isBefore(lastUpdateDateTime);
      },
    );
  }

  Future<bool> _hasData() async {
    final lastUpdateDateTime = await _getLastUpdateDateTime();
    return lastUpdateDateTime != null;
  }

  Future<void> _fetch() async {
    await 1200.milliseconds.delay;

    if (await _isNewest()) {
      state = const GachaPoolState.success();
      return;
    }

    state = const GachaPoolState.fetching();
    final failureOrSuccess = await _repository.fetchAndSaveGachaTable();
    state = await failureOrSuccess.fold(
      (f) async {
        final errorMessage = f.localizedMessage;
        late final AppFailure failure;
        if (await _hasData()) {
          failure = AppFailure.localizedError(
            '游戏数据获取失败，即将加载本地数据源...\n$errorMessage',
          );
        } else {
          failure = const AppFailure.unexpectedError(
            '游戏数据获取失败，即将重新尝试获取...\n'
            '如果问题仍然存在，请检查网络连接或与开发人员联系。',
          );
        }
        return GachaPoolState.failure(failure);
      },
      (_) async {
        await _apiRepository.setLastGachaTableUpdateDateTime(DateTime.now());
        return const GachaPoolState.success();
      },
    );
  }
}
