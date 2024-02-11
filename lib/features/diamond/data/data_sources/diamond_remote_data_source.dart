import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/providers/dio_provider.dart';
import '../dtos/diamond_response_dto.dart';

part 'diamond_remote_data_source.g.dart';

@riverpod
DiamondRemoteDataSource diamondRemoteDataSource(
  DiamondRemoteDataSourceRef ref,
) =>
    DiamondRemoteDataSource(ref.watch(akDioProvider));

@RestApi()
abstract class DiamondRemoteDataSource {
  factory DiamondRemoteDataSource(Dio dio) = _DiamondRemoteDataSource;

  @GET('/user/api/inquiry/diamond')
  Future<DiamondResponseDto> fetch({
    @Query('page') required int page,
    @Query('token') required String token,
    @Query('channelId') required String channelId,
  });
}
