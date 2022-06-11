import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  Future<void> _fetch() async {
    state = const AsyncValue.loading();
    final failureOrSuccess = await _repository.fetchAndSaveGachaTable();
    failureOrSuccess.fold(
      (failure) => state = AsyncValue.error(failure),
      (_) => state = AsyncValue.data(_),
    );
  }
}
