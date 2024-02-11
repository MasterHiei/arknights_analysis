import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/gen/assets.gen.dart';
import '../../../../core/providers/package_info_provider.dart';
import '../../../../core/theme/app_theme.dart';

class LicensePage extends ConsumerWidget {
  const LicensePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return material.Theme(
      data: AppTheme.materialOf(context),
      child: material.LicensePage(
        applicationIcon: ClipOval(
          child: Assets.images.logo.image(
            width: 88.w,
            height: 88.w,
            fit: BoxFit.contain,
          ),
        ),
        applicationVersion: ref.watch(packageInfoProvider).version,
      ),
    );
  }
}
