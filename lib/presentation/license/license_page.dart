import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/providers.dart';
import '../../core/theme/app_theme.dart';
import '../core/resources/images.dart';

class LicensePage extends ConsumerWidget {
  const LicensePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return material.Theme(
      data: AppTheme.materialOf(context),
      child: material.LicensePage(
        applicationIcon: ClipOval(
          child: Image.asset(
            Images.logo.path,
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
