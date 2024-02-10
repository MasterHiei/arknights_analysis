import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_flush_bar.dart';
import '../../../../generated/locale_keys.g.dart';
import '../providers/check_for_updates_provider.dart';
import '../widgets/index.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenVersionState(context, ref);

    final items = [
      Text(LocaleKeys.settings_title, style: TextStyle(fontSize: 24.sp)).tr(),
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

          next.failureOrLatestReleaseOption.match(
            () {},
            (failureOrLatest) => failureOrLatest.match(
              (failure) => AppFlushBar.show(
                context,
                message: failure.localizedMessage,
              ),
              (_) {
                if (next.isManually && !next.hasNewVersion) {
                  AppFlushBar.show(
                    context,
                    message: LocaleKeys.app_update_isNewest.tr(),
                    severity: FlushBarSeverity.success,
                  );
                }
              },
            ),
          );
        },
      );
}
