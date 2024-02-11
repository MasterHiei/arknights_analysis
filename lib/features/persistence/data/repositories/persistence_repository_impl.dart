import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/usecase/params/usecase_params.dart';
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
  IOEither<AppFailure, Option<DateTime>> getLastUpdateDateTime(
    NoParams params,
  ) =>
      syncHandler(
        () {
          final dateTime = _localDataSource.getLastUpdateDateTime();
          return Option.fromNullable(dateTime);
        },
      );

  @override
  TaskEither<AppFailure, Unit> cacheLastUpdateDateTime(NoParams params) =>
      asyncHandler(
        () async {
          await _localDataSource.saveLastUpdateDateTime();
          return unit;
        },
      );

  @override
  TaskEither<AppFailure, Unit> import(ImportPersistenceDataParams params) =>
      asyncHandler(
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
      asyncHandler(
        () => _localDataSource.export(
          params.uid,
          path: params.path,
        ),
      );
}
