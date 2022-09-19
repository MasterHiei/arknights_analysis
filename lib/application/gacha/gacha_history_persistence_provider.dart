import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/constants/constants.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/uid_provider.dart';
import 'states/gacha_history_persistence_state.dart';

final gachaHistoryPersistenceProvider = StateNotifierProvider.autoDispose<
    GachaHistoryPersistenceNotifier, GachaHistoryPersistenceState>(
  (ref) => GachaHistoryPersistenceNotifier(
    ref.watch(filePickerProvider),
    ref.watch(uidProvider.notifier),
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaHistoryPersistenceNotifier
    extends StateNotifier<GachaHistoryPersistenceState> {
  GachaHistoryPersistenceNotifier(
    this._filePicker,
    this._uidProvider,
    this._repository,
  ) : super(const GachaHistoryPersistenceState.init());

  final FilePicker _filePicker;
  final StateController<Option<Uid>> _uidProvider;
  final GachaRepository _repository;

  Future<void> export() async {
    _uidProvider.state.fold(
      () {},
      (uid) async {
        final directory = await getApplicationDocumentsDirectory();
        final fileName = '${uid.getOrCrash()}_$gachaHistoryExportFileName.json';
        final path = await _filePicker.saveFile(
          fileName: fileName,
          initialDirectory: directory.path,
        );
        if (path == null) {
          return;
        }

        state = const GachaHistoryPersistenceState.processing();
        final failureOrFile = await _repository.export(uid, path: path);
        state = failureOrFile.fold(
          (failure) => GachaHistoryPersistenceState.exportFailure(failure),
          (file) => GachaHistoryPersistenceState.exportSuccess(file),
        );
      },
    );
  }

  Future<void> import() async {
    _uidProvider.state.fold(
      () {},
      (uid) async {
        final directory = await getApplicationDocumentsDirectory();
        final pickedFiles = await _filePicker.pickFiles(
          initialDirectory: directory.path,
          allowedExtensions: ['json'],
        );
        final path = pickedFiles?.files.firstOrNull?.path;
        if (path == null) {
          return;
        }

        state = const GachaHistoryPersistenceState.processing();

        if (!path.endsWith('.json')) {
          const failure = AppFailure.localizedError('文件格式不正确。');
          state = const GachaHistoryPersistenceState.exportFailure(failure);
          return;
        }

        final failureOrFile = await _repository.import(uid, path: path);
        state = failureOrFile.fold(
          (failure) => GachaHistoryPersistenceState.importFailure(failure),
          (file) => const GachaHistoryPersistenceState.importSuccess(),
        );
      },
    );
  }
}
