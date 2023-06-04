import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/providers.dart';

part 'game_data_raw_remote_data_source.g.dart';

final gameDataRawRemoteDataSourceProvider =
    Provider.autoDispose<GameDataRawRemoteDataSource>(
  (ref) => GameDataRawRemoteDataSource(ref.watch(gdDioProvider)),
);

@RestApi()
abstract class GameDataRawRemoteDataSource {
  factory GameDataRawRemoteDataSource(Dio dio) = _GameDataRawRemoteDataSource;

  @GET('/excel/character_table.json')
  Future<String> fetchCharacterTable();

  @GET('/excel/gacha_table.json')
  Future<String> fetchGachaTable();
}
