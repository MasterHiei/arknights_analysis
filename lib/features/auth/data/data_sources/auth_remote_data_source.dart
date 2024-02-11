import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/dtos/token_body_dto.dart';
import '../../../../core/providers/dio_provider.dart';
import '../dtos/user_response_dto.dart';

part 'auth_remote_data_source.g.dart';

@riverpod
AuthRemoteDataSource authRemoteDataSource(AuthRemoteDataSourceRef ref) =>
    AuthRemoteDataSource(ref.watch(asDioProvider));

@RestApi()
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  @POST('/u8/user/info/v1/basic')
  Future<UserResponseDto> fetchUser(@Body() TokenBodyDto body);
}
