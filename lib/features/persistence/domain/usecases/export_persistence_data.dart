import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/repositories/persistence_repository_impl.dart';
import '../repositories/persistence_repository.dart';

part 'export_persistence_data.g.dart';

@riverpod
ExportPersistenceData exportPersistenceData(ExportPersistenceDataRef ref) =>
    ExportPersistenceData(
      ref.watch(persistenceRepositoryProvider),
    );

final class ExportPersistenceData
    implements TaskUseCase<File, ExportPersistenceDataParams> {
  const ExportPersistenceData(this.persistenceRepository);

  final PersistenceRepository persistenceRepository;

  @override
  TaskEither<AppFailure, File> call(ExportPersistenceDataParams params) =>
      persistenceRepository.export(params);
}
