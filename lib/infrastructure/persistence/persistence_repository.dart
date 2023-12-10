import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/exceptions/app_failure.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/repository_error_handler_mixin.dart';
import 'data_sources/persistence_local_data_source.dart';

part 'persistence_repository.g.dart';

@riverpod
PersistenceRepository persistenceRepository(PersistenceRepositoryRef ref) =>
    PersistenceRepositoryImpl(ref.watch(persistenceLocalDataSourceProvider));

abstract class PersistenceRepository {
  TaskEither<AppFailure, File> export(
    Uid uid, {
    required String path,
  });

  TaskEither<AppFailure, void> import(
    Uid uid, {
    required String path,
  });
}

class PersistenceRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements PersistenceRepository {
  const PersistenceRepositoryImpl(this._localDataSource);

  final PersistenceLocalDataSource _localDataSource;

  @override
  TaskEither<AppFailure, File> export(
    Uid uid, {
    required String path,
  }) =>
      executeAsync(() => _localDataSource.export(uid, path: path));

  @override
  TaskEither<AppFailure, Unit> import(
    Uid uid, {
    required String path,
  }) =>
      executeAsync(
        () async {
          await _localDataSource.import(uid, path: path);
          return unit;
        },
      );
}
