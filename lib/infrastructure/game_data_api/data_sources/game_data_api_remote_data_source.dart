import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/dio_provider.dart';
import '../dtos/game_data_commit_response_dto.dart';

part 'game_data_api_remote_data_source.g.dart';

@riverpod
GameDataApiRemoteDataSource gameDataApiRemoteDataSource(
  GameDataApiRemoteDataSourceRef ref,
) =>
    GameDataApiRemoteDataSource(ref.watch(gdApiDioProvider));

@RestApi()
abstract class GameDataApiRemoteDataSource {
  factory GameDataApiRemoteDataSource(Dio dio) = _GameDataApiRemoteDataSource;

  @GET('/commits?path=zh_CN/gamedata/excel/gacha_table.json')
  Future<List<GameDataCommitResponseDto>> fetchLastGachaTableCommit({
    @Query('per_page') int perPage = 1,
  });
}
