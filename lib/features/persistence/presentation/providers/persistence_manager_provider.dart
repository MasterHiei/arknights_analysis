import 'package:collection/collection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fpdart/fpdart.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/debounce_mixin.dart';
import '../../../../core/providers/file_picker_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/usecases/export_persistence_data.dart';
import '../../domain/usecases/import_persistence_data.dart';
import 'states/persistence_manager_state.dart';

part 'persistence_manager_provider.g.dart';

@riverpod
class PersistenceManager extends _$PersistenceManager with DebounceMixin {
  FilePicker get _filePicker => ref.read(filePickerProvider);

  @override
  PersistenceManagerState build() {
    ref.onDispose(cancelDebounce);
    return const PersistenceManagerState.idle();
  }

  void export() => debounce(_export);

  void import() => debounce(_import);

  Future<void> _export() async {
    const noParams = NoParams();
    final getParamsTask = ref.read(getCachedUserProvider).call(noParams).map(
          (user) => TaskEither.tryCatch(
            () async {
              final directory = await getApplicationDocumentsDirectory();
              final fileName =
                  '${user.uid.getOrCrash()}_${Constants.persistenceFileName}';
              final path = await _filePicker.saveFile(
                fileName: fileName,
                initialDirectory: directory.path,
              );
              if (path == null) {
                return const None();
              }

              // Export process start
              state = const PersistenceManagerState.processing();
              final params = ExportPersistenceDataParams(
                uid: user.uid,
                path: path,
              );
              return Option.fromNullable(params);
            },
            (e, _) => AppFailure.unexpectedError(e),
          ),
        );
    final exportTask = TaskEither.flatten(getParamsTask).mapLeft(some).map(
          (paramsOption) => paramsOption
              .map(
                (params) => ref
                    .read(exportPersistenceDataProvider)
                    .call(params)
                    .mapLeft(some),
              )
              .toEither(None.new)
              .toTaskEither(),
        );

    state = await TaskEither.flatten(TaskEither.flatten(exportTask))
        .match(
          (failureOption) => failureOption.match(
            PersistenceManagerState.idle,
            (failure) => PersistenceManagerState.exportFailure(failure),
          ),
          (file) => PersistenceManagerState.exportSuccess(file),
        )
        .run();
  }

  Future<void> _import() async {
    const noParams = NoParams();
    final getParamsTask = ref.read(getCachedUserProvider).call(noParams).map(
          (user) => TaskEither.tryCatch(
            () async {
              final directory = await getApplicationDocumentsDirectory();
              final pickedFiles = await _filePicker.pickFiles(
                initialDirectory: directory.path,
                allowedExtensions: ['json'],
              );
              final path = pickedFiles?.files.firstOrNull?.path;
              if (path == null) {
                return const None();
              }

              if (!path.endsWith('.json')) {
                const failure = AppFailure.localizedError('文件格式不正确。');
                state = const PersistenceManagerState.exportFailure(failure);
                return const None();
              }

              // Import process start
              state = const PersistenceManagerState.processing();
              final params = ImportPersistenceDataParams(
                uid: user.uid,
                path: path,
              );
              return Option.fromNullable(params);
            },
            (e, _) => AppFailure.unexpectedError(e),
          ),
        );
    final importTask = TaskEither.flatten(getParamsTask).mapLeft(some).map(
          (paramsOption) => paramsOption
              .map(
                (params) => ref
                    .read(importPersistenceDataProvider)
                    .call(params)
                    .mapLeft(some),
              )
              .toEither(None.new)
              .toTaskEither(),
        );

    state = await TaskEither.flatten(TaskEither.flatten(importTask))
        .match(
          (failureOption) => failureOption.match(
            PersistenceManagerState.idle,
            PersistenceManagerState.importFailure,
          ),
          (_) => const PersistenceManagerState.importSuccess(),
        )
        .run();
  }
}
