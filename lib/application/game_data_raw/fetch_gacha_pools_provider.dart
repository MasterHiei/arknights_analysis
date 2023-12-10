import 'package:fpdart/fpdart.dart';
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

  Future<void> _fetchAndSave() async {
    await 1200.milliseconds.delay;

    if (await _isNewest()) {
      return;
    }

    final task = _repository.fetchAndSaveGachaTable();
    (await task.run()).match(
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
        _apiRepository.setLastGachaTableUpdateDateTime(DateTime.now());
      },
    );
  }

  Future<Option<DateTime>> _getLastUpdateDateTime() async {
    final task = _apiRepository.getLastGachaTableUpdateDateTime();
    return (await task.run()).match((_) => none(), some);
  }

  Future<bool> _isNewest() async {
    final task = _apiRepository.fetchLastGachaTableCommitDateTime();
    return (await task.run()).match(
      (f) => false,
      (commitDate) async {
        final dateTimeOption = await _getLastUpdateDateTime();
        return dateTimeOption.match(
          () => false,
          (lastUpdateDateTime) => commitDate.isBefore(lastUpdateDateTime),
        );
      },
    );
  }

  Future<bool> _hasData() async {
    final dateTimeOption = await _getLastUpdateDateTime();
    return dateTimeOption.isSome();
  }
}
