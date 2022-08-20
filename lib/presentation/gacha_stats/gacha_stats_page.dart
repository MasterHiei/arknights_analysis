import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/user/user_provider.dart';
import '../../domain/user/value_objects/token.dart';
import '../core/common/widgets/app_error_view.dart';
import 'widgets/index.dart';

class GachaStatsPage extends StatelessWidget {
  const GachaStatsPage(this.token, {super.key});

  final Token token;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
      child: Column(
        children: [
          _header,
          SizedBox(height: 48.h),
          Expanded(child: _statsView),
        ],
      ),
    );
  }

  Widget get _header => Row(
        children: [
          UserInfoView(token),
          const Spacer(),
          const GachaPoolSelector(),
          SizedBox(width: 80.w),
          GachaExtraPanel(token),
        ],
      );

  Widget get _statsView {
    const progressBar = SizedBox.expand(child: Center(child: ProgressBar()));
    return Consumer(
      builder: (_, ref, __) {
        final state = ref.watch(userProvider(token));
        if (state.isRefreshing) {
          return progressBar;
        }
        if (state.hasFailure) {
          return const AppErrorView();
        }
        return state.userOption.fold(
          () => progressBar,
          (user) => GachaStatsView(user),
        );
      },
    );
  }
}
