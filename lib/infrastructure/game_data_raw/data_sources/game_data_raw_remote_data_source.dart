import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/dio_provider.dart';

part 'game_data_raw_remote_data_source.g.dart';

@riverpod
GameDataRawRemoteDataSource gameDataRawRemoteDataSource(
  GameDataRawRemoteDataSourceRef ref,
) =>
    GameDataRawRemoteDataSource(ref.watch(gdDioProvider));

@RestApi()
abstract class GameDataRawRemoteDataSource {
  factory GameDataRawRemoteDataSource(Dio dio) = _GameDataRawRemoteDataSource;

  @GET('/excel/character_table.json')
  Future<String> fetchCharacterTable();

  @GET('/excel/gacha_table.json')
  Future<String> fetchGachaTable();
}
