import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/providers/dio_provider.dart';
import '../../core/common/dtos/token_body_official_dto.dart';
import '../dtos/payment_response_dto.dart';

part 'payment_remote_data_source.g.dart';

@riverpod
PaymentRemoteDataSource paymentRemoteDataSource(
  PaymentRemoteDataSourceRef ref,
) =>
    PaymentRemoteDataSource(ref.watch(asDioProvider));

@RestApi()
abstract class PaymentRemoteDataSource {
  factory PaymentRemoteDataSource(Dio dio) = _PaymentRemoteDataSource;

  @POST('/u8/pay/v1/recent')
  Future<PaymentResponseDto> request(@Body() TokenBodyOfficialDto body);
}
