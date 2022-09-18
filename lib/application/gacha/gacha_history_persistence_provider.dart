import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/uid_provider.dart';
import 'states/gacha_history_persistence_state.dart';

final gachaHistoryPersistenceProvider = StateNotifierProvider.autoDispose<
    GachaHistoryPersistenceNotifier, GachaHistoryPersistenceState>(
  (ref) => GachaHistoryPersistenceNotifier(
    ref.watch(uidProvider.notifier),
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaHistoryPersistenceNotifier
    extends StateNotifier<GachaHistoryPersistenceState> {
  GachaHistoryPersistenceNotifier(
    this._uidProvider,
    this._repository,
  ) : super(const GachaHistoryPersistenceState.init());

  final StateController<Option<Uid>> _uidProvider;
  final GachaRepository _repository;

  Future<void> export() async {
    _uidProvider.state.fold(
      () {},
      (uid) async {
        state = const GachaHistoryPersistenceState.processing();
        final failureOrFile = await _repository.export(uid);
        state = failureOrFile.fold(
          (failure) => GachaHistoryPersistenceState.exportFailure(failure),
          (file) => GachaHistoryPersistenceState.exportSuccess(file),
        );
      },
    );
  }
}
