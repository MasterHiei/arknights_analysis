import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';

import '../../../core/providers.dart';
import '../dtos/gacha_table_dto.dart';

part 'game_data_remote_data_source.g.dart';

final gameDataRemoteDataSourceProvider =
    Provider.autoDispose<GameDataRemoteDataSource>(
  (ref) => GameDataRemoteDataSource(ref.watch(gdDioProvider)),
);

@RestApi()
abstract class GameDataRemoteDataSource {
  factory GameDataRemoteDataSource(Dio gdDio) = _GameDataRemoteDataSource;

  @GET('/excel/gacha_table.json')
  Future<GachaTableDto> fetchGachaTable();
}
