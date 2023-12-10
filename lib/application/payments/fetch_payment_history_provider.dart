import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/payments/payment_record.dart';
import '../../infrastructure/payments/payment_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'fetch_payment_history_provider.g.dart';

@riverpod
Future<List<PaymentRecord>> fetchPaymentHistory(FetchPaymentHistoryRef ref) =>
    ref.watch(userProvider).match(
      () async => [],
      (user) async {
        final failureOrRecords =
            await ref.read(paymentRepositoryProvider).getHistory(user.uid);
        return failureOrRecords.match(
          (failure) => throw failure,
          (records) => records,
        );
      },
    );
