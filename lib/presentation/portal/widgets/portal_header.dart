import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gacha/gacha_pool_selector_provider.dart';
import '../../../application/user/states/user_state.dart';
import '../../../application/user/user_provider.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../core/common/widgets/app_flush_bar.dart';

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
        _buildUserInfo(),
        const Spacer(),
        _buildGachaPoolSelector(),
        SizedBox(width: 80.w),
        Row(
          children: [
            _buildExportButton(context),
            SizedBox(width: 24.w),
            _buildRefreshButton(),
          ],
        ),
      ],
    );
  }

  Widget _buildUserInfo() {
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

  Widget _buildGachaPoolSelector() {
    return Consumer(
      builder: (context, ref, __) {
        final provider = ref.watch(gachaPoolSelectorProvider);
        final pools = [null, ...provider.pools];
        final items = pools
            .map(
              (pool) => MenuFlyoutItem(
                text: Text(pool ?? '总览'),
                onPressed: () => provider.select(pool),
              ),
            )
            .toList();
        return DropDownButton(
          items: items,
          leading: Icon(FluentIcons.filter, size: 16.w),
          title: Text(
            provider.selectedPool ?? '总览',
            style: TextStyle(fontSize: 16.sp),
          ),
          verticalOffset: 20.h,
          buttonStyle: ButtonStyle(
            padding: ButtonState.resolveWith(
              (states) => const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildExportButton(BuildContext context) {
    return FilledButton(
      onPressed: () => AppFlushBar.show(
        context,
        message: 'Coming soooooooooooon.',
      ),
      style: ButtonStyle(
        backgroundColor: ButtonState.resolveWith(
          (states) {
            if (states.isNone) {
              return Colors.green.normal;
            }
            if (states.isPressing) {
              return Colors.green.lighter;
            }
            if (states.isHovering) {
              return Colors.green.light;
            }
            return null;
          },
        ),
      ),
      child: Text('导出数据', style: TextStyle(fontSize: 16.sp)),
    );
  }

  Widget _buildRefreshButton() {
    return Consumer(builder: (context, ref, _) {
      return FilledButton(
        onPressed: () => ref.read(_userProvider.notifier).refresh(context),
        child: Text('更新数据', style: TextStyle(fontSize: 16.sp)),
      );
    });
  }
}
