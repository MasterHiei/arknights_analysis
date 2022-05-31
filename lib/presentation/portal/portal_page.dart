import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/routing/route_params.dart';
import 'widgets/index.dart';

class PortalPage extends StatelessWidget {
  const PortalPage(this.params, {Key? key}) : super(key: key);

  final PortalParams params;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(children: [
          PortalHeader(params.token),
        ]),
      ),
    );
  }
}
