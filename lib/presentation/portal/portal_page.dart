import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/user/user_provider.dart';
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
          SizedBox(height: 48.h),
          Expanded(
            child: Consumer(
              builder: (_, ref, __) {
                final state = ref.watch(userProvider(params.token));
                return state.userOption.fold(
                  () => const SizedBox(),
                  (user) => PortalGachaStatsView(user),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
