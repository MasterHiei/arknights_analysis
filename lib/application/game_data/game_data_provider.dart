import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../infrastructure/game_data/game_data_repository.dart';

final gachaPoolProvider =
    StateNotifierProvider.autoDispose<GachaPoolNotifier, AsyncValue<Unit>>(
  (ref) => GachaPoolNotifier(ref.watch(gameDataRepositoryProvider)),
);

class GachaPoolNotifier extends StateNotifier<AsyncValue<Unit>> {
  GachaPoolNotifier(this._repository) : super(const AsyncValue.loading()) {
    Future.delayed(const Duration(milliseconds: 1200), _fetch);
  }

  final GameDataRepository _repository;

  Future<bool> _hasData() async {
    final failrueOrCount = await _repository.count();
    return failrueOrCount.fold((_) => false, (count) => count > 0);
  }

  Future<void> _fetch() async {
    if (await _hasData()) {
      state = const AsyncValue.data(unit);
      return;
    }

    final failureOrSuccess = await _repository.fetchAndSaveGachaTable();
    failureOrSuccess.fold(
      (failure) async {
        state = AsyncValue.error(
          AppFailure.localizedError(
            '远程数据读取失败，即将加载本地数据源。\n${failure.localizedMessage}',
          ),
        );
        Future.delayed(const Duration(seconds: 3), _applyLocalData);
      },
      (_) => state = AsyncValue.data(_),
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
