import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/dio_provider.dart';

part 'game_data_remote_data_source.g.dart';

@riverpod
GameDataRemoteDataSource gameDataRemoteDataSource(
  GameDataRemoteDataSourceRef ref,
) =>
    GameDataRemoteDataSource(ref.watch(gdDioProvider));

@RestApi()
abstract class GameDataRemoteDataSource {
  factory GameDataRemoteDataSource(Dio dio) = _GameDataRemoteDataSource;

  @GET('/excel/gacha_table.json')
  Future<String> fetchGachaTable();
}
