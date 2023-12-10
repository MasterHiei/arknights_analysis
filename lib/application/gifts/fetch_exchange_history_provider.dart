import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/gifts/exchange_log.dart';
import '../../infrastructure/gifts/gift_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'fetch_exchange_history_provider.g.dart';

@riverpod
Future<List<ExchangeLog>> fetchExchangeHistory(FetchExchangeHistoryRef ref) =>
    ref.watch(userProvider).match(
      () async => [],
      (user) async {
        final failureOrLogs =
            await ref.read(giftRepositoryProvider).getHistory(user.uid);
        return failureOrLogs.match(
          (failure) => throw failure,
          (logs) => logs,
        );
      },
    );
