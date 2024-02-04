import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/persistence_repository_impl.dart';
import '../repositories/persistence_repository.dart';

part 'import_persistence_data.g.dart';

@riverpod
ImportPersistenceData importPersistenceData(ImportPersistenceDataRef ref) =>
    ImportPersistenceData(
      ref.watch(persistenceRepositoryProvider),
    );

final class ImportPersistenceData
    implements TaskUseCase<Unit, ImportPersistenceDataParams> {
  const ImportPersistenceData(this.persistenceRepository);

  final PersistenceRepository persistenceRepository;

  @override
  TaskEither<AppFailure, Unit> call(ImportPersistenceDataParams params) =>
      persistenceRepository.import(params);
}
