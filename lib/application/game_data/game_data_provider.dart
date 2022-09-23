import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time/time.dart';

import '../../core/exceptions/app_failure.dart';
import '../../infrastructure/game_data/game_data_repository.dart';
import '../../infrastructure/game_data_api/game_data_api_repository.dart';

final gachaPoolProvider =
    StateNotifierProvider.autoDispose<GachaPoolNotifier, AsyncValue<Unit>>(
  (ref) => GachaPoolNotifier(
    ref.watch(gameDataApiRepositoryProvider),
    ref.watch(gameDataRepositoryProvider),
  ),
);

class GachaPoolNotifier extends StateNotifier<AsyncValue<Unit>> {
  GachaPoolNotifier(
    this._apiRepository,
    this._repository,
  ) : super(const AsyncValue.loading()) {
    _fetch();
  }

  final GameDataApiRepository _apiRepository;
  final GameDataRepository _repository;

  Future<DateTime?> _getLastUpdateDateTime() async {
    final failureOrDateTime =
        await _apiRepository.getLastGachaTableUpdateDateTime();
    return failureOrDateTime.fold((_) => null, (dateTime) => dateTime);
  }

  Future<void> retry() => _fetch();

  Future<bool> _isNewest() async {
    final failureOrCommitDate =
        await _apiRepository.fetchLastGachaTableCommitDate();
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
      state = const AsyncValue.data(unit);
      return;
    }

    state = const AsyncValue.loading();
    final failureOrSuccess = await _repository.fetchAndSaveGachaTable();
    state = await failureOrSuccess.fold(
      (failure) async {
        final errorMessage = failure.localizedMessage;
        late final AppFailure error;
        if (await _hasData()) {
          error = AppFailure.localizedError(
            '游戏数据获取失败，即将加载本地数据源...\n$errorMessage',
          );
        } else {
          error = const AppFailure.unexpectedError(
            '游戏数据获取失败，即将重新尝试获取...\n'
            '如果问题仍然存在，请检查网络连接或与开发人员联系。',
          );
        }
        return AsyncValue.error(error);
      },
      (_) async {
        await _apiRepository.setLastGachaTableUpdateDateTime(DateTime.now());
        return AsyncValue.data(_);
      },
    );
  }
}
