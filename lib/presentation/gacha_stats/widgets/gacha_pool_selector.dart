import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/gacha/gacha_pool_selector_provider.dart';

class GachaPoolSelector extends ConsumerWidget {
  const GachaPoolSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(gachaPoolSelectorProvider);
    final items = [null, ...provider.pools]
        .map(
          (pool) => MenuFlyoutItem(
            text: Text(
              pool ?? '全部寻访',
              style: DefaultTextStyle.of(context).style,
            ),
            onPressed: () => provider.select(pool),
          ),
        )
        .toList();
    return DropDownButton(
      items: items,
      title: Text(
        provider.selectedPool ?? '全部寻访',
        style: TextStyle(fontSize: 16.sp),
      ),
    );
  }
}
