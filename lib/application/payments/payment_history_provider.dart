import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/payments/payment_record.dart';
import '../../infrastructure/payments/payment_repository.dart';
import '../user/user_provider.dart';

final paymentHistoryProvider = FutureProvider.autoDispose(
  (ref) async => ref.watch(userProvider).fold(
    () async => <PaymentRecord>[],
    (user) async {
      final repository = ref.watch(paymentRepositoryProvider);
      final failureOrRecords = await repository.getHistory(user.uid);
      return failureOrRecords.fold(
        (failure) => throw failure,
        (records) => records,
      );
    },
  ),
  dependencies: [
    userProvider,
    paymentRepositoryProvider,
  ],
);
