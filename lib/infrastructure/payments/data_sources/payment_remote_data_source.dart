import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/providers.dart';
import '../../core/common/dtos/token_body_official_dto.dart';
import '../dtos/payment_response_dto.dart';

part 'payment_remote_data_source.g.dart';

final paymentRemoteDataSourceProvider =
    Provider.autoDispose<PaymentRemoteDataSource>(
  (ref) => PaymentRemoteDataSource(ref.watch(asDioProvider)),
);

@RestApi()
abstract class PaymentRemoteDataSource {
  factory PaymentRemoteDataSource(Dio dio) = _PaymentRemoteDataSource;

  @POST('/u8/pay/v1/recent')
  Future<PaymentResponseDto> request(@Body() TokenBodyOfficialDto body);
}
