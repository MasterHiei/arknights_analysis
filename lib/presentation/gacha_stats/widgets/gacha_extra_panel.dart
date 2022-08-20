import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/user/user_provider.dart';
import '../../../domain/user/value_objects/token.dart';
import '../../core/common/widgets/app_flush_bar.dart';

class GachaExtraPanel extends StatelessWidget {
  const GachaExtraPanel(this.token, {super.key});

  final Token token;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildExportButton(context),
        SizedBox(width: 24.w),
        _buildRefreshButton(),
      ],
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
    return Consumer(
      builder: (context, ref, _) {
        final userNotifier = userProvider(token).notifier;
        return FilledButton(
          onPressed: () => ref.read(userNotifier).refresh(context),
          child: Text('更新数据', style: TextStyle(fontSize: 16.sp)),
        );
      },
    );
  }
}
