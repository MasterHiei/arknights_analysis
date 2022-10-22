import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/index.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
}
