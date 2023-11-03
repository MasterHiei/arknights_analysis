import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/payments/payment_record.dart';
import '../../infrastructure/payments/payment_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'payment_history_provider.g.dart';

@riverpod
Future<List<PaymentRecord>> paymentHistory(PaymentHistoryRef ref) =>
    ref.watch(userProvider).fold(
      () async => <PaymentRecord>[],
      (user) async {
        final failureOrRecords =
            await ref.read(paymentRepositoryProvider).getHistory(user.uid);
        return failureOrRecords.fold(
          (failure) => throw failure,
          (records) => records,
        );
      },
    );
