import 'package:fpdart/fpdart.dart';

import '../errors/app_failure.dart';

enum UserChannel {
  official('1'),
  bilibili('2');

  const UserChannel(this.id);

  final String id;

  static Either<AppFailure, UserChannel> of(String? id) => switch (id) {
        '1' => right(UserChannel.official),
        '2' => right(UserChannel.bilibili),
        _ => left(const AppFailure.emptyLocalData()),
      };

  bool get isBilibili => this == UserChannel.bilibili;

  bool get isOfficial => this == UserChannel.official;
}
