import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/gifts/gift_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'fetch_exchange_logs_provider.g.dart';

@riverpod
Future<void> fetchExchangeLogs(FetchExchangeLogsRef ref) =>
    ref.watch(userProvider).match(
      () async {},
      (user) async {
        final task = ref.read(giftRepositoryProvider).fetchAndSave(
              user.token,
              uid: user.uid,
              loginType: ref.read(loginTypeProvider),
            );
        return (await task.run()).match((failure) => throw failure, (_) {});
      },
    );
