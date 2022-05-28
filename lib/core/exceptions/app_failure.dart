import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const factory AppFailure.unexpectedError(Object e) = _UnexpectedError;

  const factory AppFailure.networkUnreachable() = _NetworkUnreachable;

  const factory AppFailure.remoteServerError({
    String? message,
    int? code,
  }) = _RemoteServerError;

  const factory AppFailure.localDataError(Object e) = _LocalDataError;

  const factory AppFailure.invalidToken() = _InvalidToken;

  @override
  String toString() => Error.safeToString(
        map(
          unexpectedError: (failrue) => '未知错误\n ${failrue.e}',
          networkUnreachable: (_) => '系统检测到网络异常，请确保您的网线没有被猫咬断。',
          remoteServerError: (failrue) =>
              '${failrue.message ?? '服务器软体不稳定，请稍后重试。'} (Code: ${failrue.code})',
          localDataError: (failrue) => '无法加载本地数据，请稍后重试。\n ${failrue.e}',
          invalidToken: (_) => '令牌错误或已失效。',
        ),
      );
}
