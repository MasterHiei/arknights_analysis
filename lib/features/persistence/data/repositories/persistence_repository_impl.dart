import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../../infrastructure/core/mixins/repository_error_handler_mixin.dart';
import '../../domain/repositories/persistence_repository.dart';
import '../data_sources/persistence_local_data_source.dart';

part 'persistence_repository_impl.g.dart';

@riverpod
PersistenceRepository persistenceRepository(PersistenceRepositoryRef ref) =>
    PersistenceRepositoryImpl(ref.watch(persistenceLocalDataSourceProvider));

class PersistenceRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements PersistenceRepository {
  const PersistenceRepositoryImpl(this._localDataSource);

  final PersistenceLocalDataSource _localDataSource;

  @override
  TaskEither<AppFailure, Unit> import(ImportPersistenceDataParams params) =>
      executeAsync(
        () async {
          await _localDataSource.import(
            params.uid,
            path: params.path,
          );
          return unit;
        },
      );

  @override
  TaskEither<AppFailure, File> export(ExportPersistenceDataParams params) =>
      executeAsync(
        () => _localDataSource.export(
          params.uid,
          path: params.path,
        ),
      );
}
