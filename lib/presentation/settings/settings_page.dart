import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/settings/check_for_updates_provider.dart';
import '../core/common/widgets/app_flush_bar.dart';
import 'widgets/index.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenVersionState(context, ref);

    final items = [
      Text('设置', style: TextStyle(fontSize: 24.sp)),
      const SettingsThemeSection(),
      const SettingsAboutSection(),
    ];
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      itemBuilder: (_, index) => items[index],
      itemCount: items.length,
    );
  }

  void _listenVersionState(BuildContext context, WidgetRef ref) => ref.listen(
        checkForUpdatesProvider,
        (_, next) {
          if (next.isChecking || next.failureOption.isSome()) {
            return;
          }

          next.failureOption.fold(
            () {},
            (failure) => AppFlushBar.show(
              context,
              message: failure.localizedMessage,
            ),
          );

          if (!next.hasNewVersion) {
            AppFlushBar.show(
              context,
              message: '您的软件是最新版本。',
              severity: FlushBarSeverity.success,
            );
          }
        },
      );
}
