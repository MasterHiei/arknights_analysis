import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/dio_provider.dart';
import '../dtos/exchange_log_response_dto.dart';

part 'gift_remote_data_source.g.dart';

@riverpod
GiftRemoteDataSource giftRemoteDataSource(GiftRemoteDataSourceRef ref) =>
    GiftRemoteDataSource(ref.watch(akDioProvider));

@RestApi()
abstract class GiftRemoteDataSource {
  factory GiftRemoteDataSource(Dio dio) = _GiftRemoteDataSource;

  @GET('/user/api/gift/getExchangeLog')
  Future<ExchangeLogResponseDto> fetch({
    @Query('token') required String token,
    @Query('channelId') required String channelId,
  });
}
