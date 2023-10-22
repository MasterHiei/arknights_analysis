import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/providers/dio_provider.dart';
import '../../core/common/dtos/token_body_bilibili_dto.dart';
import '../../core/common/dtos/token_body_official_dto.dart';
import '../dtos/user_response_dto.dart';

part 'user_remote_data_source.g.dart';

final userRemoteDataSourceProvider = Provider.autoDispose<UserRemoteDataSource>(
  (ref) => UserRemoteDataSource(ref.watch(asDioProvider)),
);

@RestApi()
abstract class UserRemoteDataSource {
  factory UserRemoteDataSource(Dio dio) = _UserRemoteDataSource;

  @POST('/u8/user/info/v1/basic')
  Future<UserResponseDto> requestOfficial(@Body() TokenBodyOfficialDto body);

  @POST('/u8/user/info/v1/basic')
  Future<UserResponseDto> requestBilibili(@Body() TokenBodyBilibiliDto body);
}
