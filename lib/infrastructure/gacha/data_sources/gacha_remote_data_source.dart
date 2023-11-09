import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/dio_provider.dart';
import '../dtos/gacha_response_dto.dart';

part 'gacha_remote_data_source.g.dart';

@riverpod
GachaRemoteDataSource gachaRemoteDataSource(GachaRemoteDataSourceRef ref) =>
    GachaRemoteDataSource(ref.watch(akDioProvider));

@RestApi()
abstract class GachaRemoteDataSource {
  factory GachaRemoteDataSource(Dio dio) = _GachaRemoteDataSource;

  @GET('/user/api/inquiry/gacha')
  Future<GachaResponseDto> fetch({
    @Query('page') required int page,
    @Query('token') required String token,
    @Query('channelId') required String channelId,
  });
}
