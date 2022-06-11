import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/user/states/user_state.dart';
import '../../../application/user/user_provider.dart';
import '../../../domain/user/value_objects/token.dart';

final _userOptionProvider = Provider.autoDispose.family(
  (ref, Token token) => ref.watch(userProvider(token)).userOption,
);

class PortalHeader extends StatelessWidget {
  const PortalHeader(this.token, {Key? key}) : super(key: key);

  final Token token;

  AutoDisposeStateNotifierProvider<UserNotifier, UserState> get _userProvider =>
      userProvider(token);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildUserInfoArea(),
        const Spacer(),
        _buildOperatorArea(),
      ],
    );
  }

  Widget _buildUserInfoArea() {
    return Consumer(
      builder: (_, ref, __) {
        final userOption = ref.watch(_userOptionProvider(token));
        return userOption.fold(
          () => const SizedBox(),
          (user) => Column(
            children: [
              Text(
                user.nickName,
                style: TextStyle(fontSize: 20.sp),
              ),
              Text(
                'UID: ${user.uid.getOrCrash()}',
                style: TextStyle(color: Colors.grey[100], fontSize: 14.sp),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOperatorArea() {
    return Consumer(builder: (context, ref, _) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FilledButton(
            onPressed: () => ref.read(_userProvider.notifier).refresh(context),
            child: const Text('更新数据'),
          ),
        ],
      );
    });
  }
}
