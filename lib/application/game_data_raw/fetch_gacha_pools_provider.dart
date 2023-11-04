import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../core/exceptions/app_failure.dart';
import '../../infrastructure/game_data_api/game_data_api_repository.dart';
import '../../infrastructure/game_data_raw/game_data_raw_repository.dart';

part 'fetch_gacha_pools_provider.g.dart';

@riverpod
class FetchGachaPools extends _$FetchGachaPools {
  GameDataApiRepository get _apiRepository =>
      ref.read(gameDataApiRepositoryProvider);

  GameDataRawRepository get _repository =>
      ref.read(gameDataRawRepositoryProvider);

  @override
  Future<void> build() => _fetchAndSave();

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

  Future<void> _fetchAndSave() async {
    await 1200.milliseconds.delay;

    if (await _isNewest()) {
      return;
    }

    final failureOrSuccess = await _repository.fetchAndSaveGachaTable();
    await failureOrSuccess.fold(
      (f) async {
        if (await _hasData()) {
          throw AppFailure.localizedError(
            '游戏数据获取失败，即将加载本地数据源...\n${f.localizedMessage}',
          );
        } else {
          throw const AppFailure.unexpectedError(
            '游戏数据获取失败，即将重新尝试获取...\n'
            '如果问题仍然存在，请检查网络连接或与开发人员联系。',
          );
        }
      },
      (_) async {
        await _apiRepository.setLastGachaTableUpdateDateTime(DateTime.now());
      },
    );
  }
}
