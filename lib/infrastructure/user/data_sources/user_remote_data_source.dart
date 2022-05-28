import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/types/types.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../core/mixins/token_mixin.dart';
import '../dtos/user_response_dto.dart';

final userRemoteDataSourceProvider = Provider.autoDispose<UserRemoteDataSource>(
  (ref) => UserRemoteDataSourceImpl(ref.watch(asDioProvider)),
);

abstract class UserRemoteDataSource {
  Future<UserResponseDto> fetch(Token token);
}

class UserRemoteDataSourceImpl with TokenMixin implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl(this._asDio);

  final Dio _asDio;

  @override
  Future<UserResponseDto> fetch(Token token) async {
    final response = await _asDio.post<Json>(
      '/u8/user/info/v1/basic',
      data: generatePostData(token),
    );
    return UserResponseDto.fromJson(response.data!);
  }
}
