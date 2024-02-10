import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/providers/connectivity_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/latest_release.dart';
import '../../domain/repositories/settings_repository.dart';
import '../data_sources/settings_remote_data_source.dart';

part 'settings_repository_impl.g.dart';

@riverpod
SettingsRepository settingsRepository(SettingsRepositoryRef ref) =>
    SettingsRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(settingsRemoteDataSourceProvider),
    );

class SettingsRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements SettingsRepository {
  const SettingsRepositoryImpl(
    this._connectivity,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final SettingsRemoteDataSource _remoteDataSource;

  @override
  TaskEither<AppFailure, LatestRelease> fetchLatestRelease(NoParams params) =>
      asyncHandler(
        () async {
          final response = await _remoteDataSource.fetchLatestRelease();
          return response.toDomain();
        },
        connectivity: _connectivity,
      );
}
