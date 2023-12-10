import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/exceptions/app_failure.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/api_error_handler_mixin.dart';
import 'data_sources/persistence_local_data_source.dart';

part 'persistence_repository.g.dart';

@riverpod
PersistenceRepository persistenceRepository(PersistenceRepositoryRef ref) =>
    PersistenceRepositoryImpl(ref.watch(persistenceLocalDataSourceProvider));

abstract class PersistenceRepository {
  Future<Either<AppFailure, File>> export(
    Uid uid, {
    required String path,
  });

  Future<Either<AppFailure, void>> import(
    Uid uid, {
    required String path,
  });
}

class PersistenceRepositoryImpl
    with APIErrorHandlerMixin
    implements PersistenceRepository {
  const PersistenceRepositoryImpl(this._localDataSource);

  final PersistenceLocalDataSource _localDataSource;

  @override
  Future<Either<AppFailure, File>> export(
    Uid uid, {
    required String path,
  }) =>
      execute(() => _localDataSource.export(uid, path: path));

  @override
  Future<Either<AppFailure, void>> import(
    Uid uid, {
    required String path,
  }) =>
      execute(() => _localDataSource.import(uid, path: path));
}
