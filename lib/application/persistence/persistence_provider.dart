import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/constants/constants.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers/file_picker_provider.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/core/mixins/debounce_mixin.dart';
import '../../infrastructure/persistence/persistence_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'states/persistence_state.dart';

final persistenceProvider =
    StateNotifierProvider.autoDispose<PersistenceNotifier, PersistenceState>(
  (ref) => PersistenceNotifier(
    ref.watch(userProvider),
    ref.watch(filePickerProvider),
    ref.watch(persistenceRepositoryProvider),
  ),
);

class PersistenceNotifier extends StateNotifier<PersistenceState>
    with DebounceMixin {
  PersistenceNotifier(
    this._userOption,
    this._filePicker,
    this._repository,
  ) : super(const PersistenceState.idle());

  final FilePicker _filePicker;
  final Option<User> _userOption;
  final PersistenceRepository _repository;

  @override
  void dispose() {
    cancelDebounce();
    super.dispose();
  }

  void export() => debounce(_export);

  void import() => debounce(_import);

  Future<void> _export() async {
    _userOption.fold(
      () {},
      (user) async {
        final uid = user.uid;
        final directory = await getApplicationDocumentsDirectory();
        final fileName = '${uid.getOrCrash()}_${Constants.persistenceFileName}';
        final path = await _filePicker.saveFile(
          fileName: fileName,
          initialDirectory: directory.path,
        );
        if (path == null) {
          return;
        }

        state = const PersistenceState.processing();
        final failureOrFile = await _repository.export(uid, path: path);
        state = failureOrFile.fold(
          (failure) => PersistenceState.exportFailure(failure),
          (file) => PersistenceState.exportSuccess(file),
        );
      },
    );
  }

  Future<void> _import() async {
    _userOption.fold(
      () {},
      (user) async {
        final uid = user.uid;
        final directory = await getApplicationDocumentsDirectory();
        final pickedFiles = await _filePicker.pickFiles(
          initialDirectory: directory.path,
          allowedExtensions: ['json'],
        );
        final path = pickedFiles?.files.firstOrNull?.path;
        if (path == null) {
          return;
        }

        state = const PersistenceState.processing();

        if (!path.endsWith('.json')) {
          const failure = AppFailure.localizedError('文件格式不正确。');
          state = const PersistenceState.exportFailure(failure);
          return;
        }

        final failureOrFile = await _repository.import(uid, path: path);
        state = failureOrFile.fold(
          (failure) => PersistenceState.importFailure(failure),
          (file) => const PersistenceState.importSuccess(),
        );
      },
    );
  }
}
