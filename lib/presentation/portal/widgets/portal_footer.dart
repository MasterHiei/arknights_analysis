import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../core/constants/constants.dart';
import '../../../core/providers.dart';

class PortalFooter extends ConsumerWidget {
  const PortalFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageInfo = ref.watch(packageInfoProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: FaIcon(FontAwesomeIcons.github, size: 14.sp),
          onPressed: () => launchUrlString(gitHub),
        ),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: 'Created By '),
              const TextSpan(text: '肝味屋'),
              const TextSpan(text: ' - '),
              TextSpan(text: 'v${packageInfo.version}'),
            ],
            style: TextStyle(
              color: Colors.grey[80],
              fontSize: 14.sp,
              height: 1.25,
            ),
          ),
        ),
      ],
    );
  }
}
