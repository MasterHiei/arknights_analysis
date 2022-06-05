import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';

import '../../../core/providers.dart';
import '../dtos/gacha_response_dto.dart';

part 'gacha_remote_data_source.g.dart';

final gachaRemoteDataSourceProvider =
    Provider.autoDispose<GachaRemoteDataSource>(
  (ref) => GachaRemoteDataSource(ref.watch(akDioProvider)),
);

@RestApi()
abstract class GachaRemoteDataSource {
  factory GachaRemoteDataSource(Dio akDio) = _GachaRemoteDataSource;

  @GET('/user/api/inquiry/gacha')
  Future<GachaResponseDto> fetch({
    @Query('token') required String token,
    @Query('page') required int page,
  });
}
