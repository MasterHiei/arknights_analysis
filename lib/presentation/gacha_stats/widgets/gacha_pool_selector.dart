import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gacha/gacha_pool_selector_provider.dart';

class GachaPoolSelector extends ConsumerWidget {
  const GachaPoolSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(gachaPoolSelectorProvider);
    final pools = [null, ...provider.pools];
    final items = pools
        .map(
          (pool) => MenuFlyoutItem(
            text: Text(
              pool ?? '标准寻访',
              style: DefaultTextStyle.of(context).style,
            ),
            onPressed: () => provider.select(pool),
          ),
        )
        .toList();
    return DropDownButton(
      items: items,
      leading: Icon(FluentIcons.filter, size: 16.w),
      title: Text(
        provider.selectedPool ?? '标准寻访',
        style: TextStyle(fontSize: 16.sp),
      ),
    );
  }
}
