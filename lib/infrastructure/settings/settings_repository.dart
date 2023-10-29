import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers/connectivity_provider.dart';
import '../../domain/settings/latest_release.dart';
import '../core/mixins/api_error_handler_mixin.dart';
import 'data_sources/settings_remote_data_source.dart';

part 'settings_repository.g.dart';

@riverpod
SettingsRepository settingsRepository(SettingsRepositoryRef ref) =>
    SettingsRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(settingsRemoteDataSourceProvider),
    );

abstract class SettingsRepository {
  Future<Either<AppFailure, LatestRelease>> fetchLatestRelease();
}

class SettingsRepositoryImpl
    with APIErrorHandlerMixin
    implements SettingsRepository {
  const SettingsRepositoryImpl(
    this._connectivity,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final SettingsRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, LatestRelease>> fetchLatestRelease() => execute(
        () async {
          final response = await _remoteDataSource.fetchLatestRelease();
          return response.toDomain();
        },
        connectivity: _connectivity,
      );
}
