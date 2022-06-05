import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';

import '../../../core/providers.dart';
import '../../core/common/dtos/token_body_dto.dart';
import '../dtos/user_response_dto.dart';

part 'user_remote_data_source.g.dart';

final userRemoteDataSourceProvider = Provider.autoDispose<UserRemoteDataSource>(
  (ref) => UserRemoteDataSource(ref.watch(asDioProvider)),
);

@RestApi()
abstract class UserRemoteDataSource {
  factory UserRemoteDataSource(Dio asDio) = _UserRemoteDataSource;

  @POST('/u8/user/info/v1/basic')
  Future<UserResponseDto> request(@Body() TokenBodyDto body);
}
