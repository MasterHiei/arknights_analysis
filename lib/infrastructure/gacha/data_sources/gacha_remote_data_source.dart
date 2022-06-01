import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/types/types.dart';
import '../../../domain/user/value_objects/token.dart';
import '../dtos/gacha_response_dto.dart';

final gachaRemoteDataSourceProvider =
    Provider.autoDispose<GachaRemoteDataSource>(
  (ref) => GachaRemoteDataSourceImpl(ref.watch(akDioProvider)),
);

abstract class GachaRemoteDataSource {
  Future<GachaResponseDto> fetch(Token token, {required int page});
}

class GachaRemoteDataSourceImpl implements GachaRemoteDataSource {
  const GachaRemoteDataSourceImpl(this._akDio);

  final Dio _akDio;

  @override
  Future<GachaResponseDto> fetch(Token token, {required int page}) async {
    final queryParameters = {
      'page': page,
      'token': token.getOrCrash(),
    };
    final response = await _akDio.get<Json>(
      '/user/api/inquiry/gacha',
      queryParameters: queryParameters,
    );
    return GachaResponseDto.fromJson(response.data!);
  }
}
