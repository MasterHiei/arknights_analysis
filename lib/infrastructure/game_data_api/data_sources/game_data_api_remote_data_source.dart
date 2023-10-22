import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/providers/dio_provider.dart';
import '../dtos/game_data_commit_response_dto.dart';

part 'game_data_api_remote_data_source.g.dart';

final gameDataApiRemoteDataSourceProvider =
    Provider.autoDispose<GameDataApiRemoteDataSource>(
  (ref) => GameDataApiRemoteDataSource(ref.watch(gdApiDioProvider)),
);

@RestApi()
abstract class GameDataApiRemoteDataSource {
  factory GameDataApiRemoteDataSource(Dio dio) = _GameDataApiRemoteDataSource;

  @GET('/commits?path=zh_CN/gamedata/excel/gacha_table.json&per_page=1')
  Future<List<GameDataCommitResponseDto>> fetchLastGachaTableCommit();
}
