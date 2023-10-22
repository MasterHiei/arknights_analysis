import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/providers/dio_provider.dart';
import '../dtos/diamond_response_dto.dart';

part 'diamond_remote_data_source.g.dart';

final diamondRemoteDataSourceProvider =
    Provider.autoDispose<DiamondRemoteDataSource>(
  (ref) => DiamondRemoteDataSource(ref.watch(akDioProvider)),
);

@RestApi()
abstract class DiamondRemoteDataSource {
  factory DiamondRemoteDataSource(Dio dio) = _DiamondRemoteDataSource;

  @GET('/user/api/inquiry/diamond')
  Future<DiamondResponseDto> fetch({
    @Query('token') required String token,
    @Query('page') required int page,
    @Query('channelId') String? channelId,
  });
}
