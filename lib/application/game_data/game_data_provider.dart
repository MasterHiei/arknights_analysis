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

  Future<bool> _hasData() async {
    final failureOrCommitDate =
        await _apiRepository.fetchLastGachaTableCommitDate();
    return failureOrCommitDate.fold(
      (f) => false,
      (commitDate) async {
        final failureOrUpdateDate =
            await _apiRepository.getLastGachaTableUpdateDateTime();
        return failureOrUpdateDate.fold((f) => false, commitDate.isBefore);
      },
    );
  }

  Future<void> _fetch() async {
    await 1200.milliseconds.delay;

    if (await _hasData()) {
      state = const AsyncValue.data(unit);
      return;
    }

    final failureOrSuccess = await _repository.fetchAndSaveGachaTable();
    failureOrSuccess.fold(
      (failure) async {
        final error = AppFailure.localizedError(
          '远程数据读取失败，即将加载本地数据源。\n${failure.localizedMessage}',
        );
        state = AsyncValue.error(error);

        await 3.seconds.delay;
        _applyLocalData();
      },
      (_) async {
        await _apiRepository.setLastGachaTableUpdateDateTime(DateTime.now());
        state = AsyncValue.data(_);
      },
    );
  }

  Future<void> _applyLocalData() async {
    state = const AsyncValue.loading();
    final failureOrSuccess = await _repository.saveGachaTableFromLocalFile();
    state = failureOrSuccess.fold(
      (failure) => AsyncValue.error(failure),
      (_) => AsyncValue.data(_),
    );
  }
}
