import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/dio_provider.dart';
import '../dtos/latest_release_dto.dart';

part 'settings_remote_data_source.g.dart';

@riverpod
SettingsRemoteDataSource settingsRemoteDataSource(
  SettingsRemoteDataSourceRef ref,
) =>
    SettingsRemoteDataSource(ref.watch(rdApiDioProvider));

@RestApi()
abstract class SettingsRemoteDataSource {
  factory SettingsRemoteDataSource(Dio dio) = _SettingsRemoteDataSource;

  @GET('/releases/latest')
  Future<LatestReleaseDto> fetchLatestRelease();
}
