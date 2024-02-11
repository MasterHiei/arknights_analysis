import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/user_channel.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/usecases/get_cached_user_channel.dart';

part 'current_user_channel.g.dart';

@riverpod
class CurrentUserChannel extends _$CurrentUserChannel {
  @override
  Option<UserChannel> build() {
    _get();
    return const None();
  }

  Future<void> _get() async {
    const params = NoParams();
    state = ref
        .read(getCachedUserChannelProvider)
        .call(params)
        .match(
          (_) => const None(),
          some,
        )
        .run();
  }
}
