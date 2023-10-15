import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/payments/payment_repository.dart';
import '../user/user_provider.dart';

final fetchAndSavePaymentsProvider = FutureProvider.autoDispose(
  (ref) async => ref.watch(userProvider).fold(
    () async => unit,
    (user) async {
      final failureOrRecords = await ref
          .watch(paymentRepositoryProvider)
          .fetchAndSave(user.token, uid: user.uid);
      return failureOrRecords.fold((failure) => throw failure, (_) => unit);
    },
  ),
);
