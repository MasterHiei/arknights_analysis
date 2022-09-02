import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const AppFailure._();

  const factory AppFailure.localizedError(String message) = _LocalizedError;

  const factory AppFailure.unexpectedError(Object e) = _UnexpectedError;

  const factory AppFailure.networkUnreachable() = _NetworkUnreachable;

  const factory AppFailure.remoteServerError({
    String? message,
    int? code,
  }) = _RemoteServerError;

  const factory AppFailure.localDataError(Object e) = _LocalDataError;

  const factory AppFailure.localDataEmpty() = _LocalDataEmpty;

  const factory AppFailure.invalidToken() = _InvalidToken;

  String get localizedMessage => map(
        localizedError: (f) => f.message,
        unexpectedError: (f) => '未知错误\n ${f.e}',
        networkUnreachable: (_) => '系统检测到网络异常，请确保您的网线没有被猫咬断。',
        remoteServerError: (f) {
          final status = f.code == null ? '' : '[${f.code}]';
          final message = f.message ?? '服务器软体不稳定，请稍后重试。';
          return '$status$message';
        },
        localDataError: (f) => '无法加载本地数据，请稍后重试。\n${f.e}',
        localDataEmpty: (_) => '本地数据不存在，请尝试重新获取数据。',
        invalidToken: (_) => '令牌错误或已失效，请重新登录获取最新的访问令牌。',
      );
}
