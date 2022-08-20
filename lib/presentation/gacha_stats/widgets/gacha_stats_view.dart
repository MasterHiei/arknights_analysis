import 'package:badges/badges.dart';
import 'package:dartx/dartx.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' show Material, DataCell;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../application/gacha/gacha_pie_chart_provider.dart';
import '../../../application/gacha/gacha_pool_selector_provider.dart';
import '../../../application/gacha/gacha_provider.dart';
import '../../../application/gacha/gacha_stats_provider.dart';
import '../../../application/gacha/params/get_gacha_stats_params.dart';
import '../../../application/gacha/states/gacha_state.dart';
import '../../../core/constants/constants.dart';
import '../../../core/enums/gacha_rule_type.dart';
import '../../../core/enums/rarity.dart';
import '../../../core/utils/launch_url.dart';
import '../../../domain/gacha/gacha_stats.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../../infrastructure/core/extensions/date_time_formatter.dart';
import '../../core/common/widgets/app_error_view.dart';
import '../../core/common/widgets/app_flush_bar.dart';

final _uidProvider = Provider.autoDispose<Uid>(
  (_) => throw UnimplementedError(),
);

final _selectedPool = Provider.autoDispose(
  (ref) => ref.watch(gachaPoolSelectorProvider).selectedPool,
);

class GachaStatsView extends ConsumerWidget {
  const GachaStatsView(this.user, {super.key});

  final User user;

  AutoDisposeStateNotifierProvider<GachaNotifier, GachaState>
      get _gachaProvider => gachaProvider(user);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    return ref.watch(_gachaProvider).maybeMap(
          fetching: (state) {
            double? value;
            final total = state.total ?? 0;
            if (total == 0) {
              value = 100;
            } else {
              value = (state.current / state.total!) * 100;
            }
            return _buildProgressBar(
              value: value,
              label: '正在获取第${state.current}页数据',
            );
          },
          orElse: () => ProviderScope(
            overrides: [_uidProvider.overrideWithValue(user.uid)],
            child: const _StatsView(),
          ),
        );
  }

  Widget _buildProgressBar({
    double? value,
    String label = '',
  }) =>
      SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProgressBar(value: value),
            SizedBox(height: 12.h),
            Text(label, style: TextStyle(color: Colors.grey[100])),
          ],
        ),
      );

  void _listenState(BuildContext context, WidgetRef ref) {
    ref.listen<GachaState>(
      _gachaProvider,
      (_, next) => next.maybeWhen<void>(
        success: () => AppFlushBar.show(
          context,
          message: '数据已更新。',
          severity: FlushBarSeverity.success,
        ),
        failure: (failure) => AppFlushBar.show(
          context,
          message: failure.localizedMessage,
          severity: FlushBarSeverity.error,
        ),
        orElse: () {},
      ),
    );
  }
}

class _StatsView extends ConsumerWidget {
  const _StatsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = ref.watch(_uidProvider);
    final pool = ref.watch(_selectedPool);

    // 常规寻访
    if (pool == null) {
      final params = GetGachaStatsParams(
        uid: uid,
        excludeRuleTypes: GachaRuleType.independentGuarantee,
      );
      return Consumer(
        builder: (_, ref, __) {
          return ref.watch(gachaStatsProvider(params)).when(
                data: (stats) => _PieChart(pool, stats),
                error: (_, __) => const AppErrorView(),
                loading: () => const SizedBox(),
              );
        },
      );
    }

    // 独立寻访
    final params = GetGachaStatsParams(uid: uid, pool: pool);
    return ref.watch(gachaStatsProvider(params)).when(
          data: (stats) => _PieChart(pool, stats),
          error: (_, __) => const AppErrorView(),
          loading: () => const SizedBox(),
        );
  }
}

class _PieChart extends StatelessWidget {
  const _PieChart(this.pool, this.stats);

  final String? pool;
  final GachaStats stats;

  String get title => pool ?? '常规寻访';

  AutoDisposeChangeNotifierProvider<GachaPieChartNotifier>
      get _gachaPieChartProvider => gachaPieChartProvider(title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Column(
        children: [
          _titleLabel,
          SizedBox(height: 28.h),
          _indicators,
          Container(
            padding: EdgeInsets.all(4.w),
            width: 320.w,
            height: 320.h,
            child: _chart,
          ),
          _pullDateRangeLabel,
          SizedBox(height: 16.h),
          _totalPullsLabel,
          SizedBox(height: 4.h),
          ..._totalPullsWithoutRareLabels,
          SizedBox(height: 16.h),
          ..._pullRateLabels,
        ],
      ),
    );
  }

  Widget get _titleLabel => Text(
        title,
        style: TextStyle(
          color: Colors.grey[150],
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      );

  Widget get _indicators {
    final items = Rarity.poolExclusive.map(
      (rarity) => Consumer(
        builder: (_, ref, __) {
          final indicatorSize = Size(24.w, 16.h);
          final indicator = Consumer(
            builder: (_, ref, __) {
              final isTouched =
                  ref.watch(_gachaPieChartProvider).isTouched(rarity);
              final alpha = isTouched ? 180 : 255;
              return Container(
                width: indicatorSize.width,
                height: indicatorSize.height,
                decoration: BoxDecoration(
                  color: rarity.color.withAlpha(alpha),
                  borderRadius: BorderRadius.circular(2),
                ),
              );
            },
          );
          final rarityLabel = Text(
            rarity.fullTitle,
            style: TextStyle(
              color: Colors.grey[130],
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              height: indicatorSize.height / 14.sp,
            ),
          );
          final divider = SizedBox(width: 12.w);
          return MouseRegion(
            onEnter: (_) => ref.read(_gachaPieChartProvider).touch(rarity),
            onExit: (_) => ref.read(_gachaPieChartProvider).touch(null),
            child: Row(
              children: [
                indicator,
                SizedBox(width: 4.w),
                rarityLabel,
                if (rarity != Rarity.poolExclusive.last) divider,
              ],
            ),
          );
        },
      ),
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items.toList(),
    );
  }

  Widget get _chart => Consumer(
        builder: (context, ref, _) {
          final sources = stats.statsPerRarity;
          final sections = stats.statsPerRarity.map((pair) {
            final rarity = pair.first;
            final stats = pair.second;
            final isTouched =
                ref.watch(_gachaPieChartProvider).isTouched(rarity);
            final radius = isTouched ? 130.w : 120.w;
            final fontSize = isTouched ? 14.sp : 12.sp;
            return PieChartSectionData(
              value: stats.chars.length.toDouble(),
              color: rarity.color,
              radius: radius,
              title: this.stats.caclPullRate(rarity),
              titleStyle: TextStyle(color: Colors.white, fontSize: fontSize),
            );
          }).toList();
          final data = PieChartData(
            sections: sections,
            centerSpaceRadius: 0,
            sectionsSpace: 0,
            borderData: FlBorderData(show: false),
            pieTouchData: PieTouchData(
              touchCallback: (event, response) =>
                  _onTouch(context, ref, sources, event, response),
            ),
          );
          return PieChart(data);
        },
      );

  Widget get _pullDateRangeLabel => Text(
        stats.dateRange,
        style: TextStyle(color: Colors.grey[100], fontSize: 14.sp),
      );

  Widget get _totalPullsLabel => Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: '共抽取'),
            TextSpan(
              text: ' ${stats.chars.length} ',
              style: TextStyle(color: Colors.blue.lighter),
            ),
            const TextSpan(text: '次'),
          ],
          style: TextStyle(
            color: Colors.grey[130],
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  List<Widget> get _totalPullsWithoutRareLabels => Rarity.rares
      .map(
        (rarity) => Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: '已累计'),
              TextSpan(
                text: ' ${stats.sinceLastPull(rarity)} ',
                style: TextStyle(color: Colors.blue.lighter),
              ),
              const TextSpan(text: '抽未出'),
              TextSpan(
                text: ' ${rarity.title} ',
                style: TextStyle(color: rarity.color),
              ),
            ],
            style: TextStyle(
              color: Colors.grey[130],
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
      .toList();

  List<Widget> get _pullRateLabels => Rarity.rares.map(
        (rarity) {
          final total = stats.filter(rarity).length;
          if (total == 0) {
            return const SizedBox();
          }
          final details = Row(
            children: [
              Expanded(flex: 2, child: Text('$total')),
              Expanded(
                flex: 4,
                child: Text('平均出货次数：${stats.caclAvgPulls(rarity)}'),
              ),
            ],
          );
          return DefaultTextStyle.merge(
            style: TextStyle(
              color: rarity.color,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
            child: SizedBox(
              width: 320.w,
              child: Row(
                children: [
                  Text('${rarity.title}：'),
                  SizedBox(width: 12.w),
                  Expanded(child: details),
                ],
              ),
            ),
          );
        },
      ).toList();

  Future<void> _onTouch(
    BuildContext context,
    WidgetRef ref,
    List<CharsPerRarity> sources,
    FlTouchEvent event,
    PieTouchResponse? response,
  ) async {
    //* Hover
    final isInterestedForInteractions = event.isInterestedForInteractions;
    final touchedSection = response?.touchedSection;
    if (!isInterestedForInteractions || touchedSection == null) {
      ref.read(_gachaPieChartProvider).touch(null);
      return;
    }
    final index = touchedSection.touchedSectionIndex;
    final rarity = sources.elementAtOrNull(index)?.first;
    ref.read(_gachaPieChartProvider).touch(rarity);

    //* Tap
    if (event is FlTapUpEvent && rarity != null) {
      _showCharsTable(context, rarity);
    }
  }

  Future<void> _showCharsTable(BuildContext context, Rarity rarity) async {
    final columns = [
      DataColumn2(label: const SizedBox(), fixedWidth: 80.w),
      const DataColumn2(label: Text('干员'), size: ColumnSize.L),
      const DataColumn2(label: Text('抽数'), size: ColumnSize.S),
      const DataColumn2(label: Text('寻访'), size: ColumnSize.L),
      const DataColumn2(label: Text('获取时间'), size: ColumnSize.L),
    ];

    DataCell buildTextCell(String text, {TextStyle? style}) => DataCell(
          DefaultTextStyle.merge(
            style: style ??
                TextStyle(
                  color: Colors.grey[120],
                  fontSize: 15.sp,
                ),
            child: Text(text),
          ),
        );

    final rows = stats.filterWithPulls(rarity).reversed.mapIndexed(
      (index, pair) {
        final char = pair.first;
        final pulls = pair.second;
        return DataRow2.byIndex(
          index: index,
          cells: [
            buildTextCell(
              '${index + 1}',
              style: TextStyle(color: Colors.grey[80], fontSize: 14.sp),
            ),
            DataCell(
              Badge(
                badgeContent: Text(
                  'NEW',
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: Colors.white,
                        fontSize: 9.sp,
                      ),
                ),
                position: BadgePosition.topEnd(top: 4.h, end: -34.w),
                shape: BadgeShape.square,
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                borderRadius: BorderRadius.circular(4.w),
                showBadge: char.isNew,
                child: Text.rich(
                  TextSpan(
                    text: char.name,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launch('$prts/w/${char.name}'),
                  ),
                  style: DefaultTextStyle.of(context).style.copyWith(
                        color: rarity.color,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            buildTextCell('$pulls'),
            buildTextCell(char.pool),
            buildTextCell(char.ts.dateTime.yMMMdHmsString),
          ],
        );
      },
    ).toList();
    final dataTable = DataTable2(
      columns: columns,
      headingTextStyle: DefaultTextStyle.of(context).style.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
      rows: rows,
    );

    await showCustomModalBottomSheet<void>(
      context: context,
      builder: (_) => Container(
        height: 540.h,
        padding: EdgeInsets.only(left: 12.w, top: 16.h, right: 12.w),
        child: dataTable,
      ),
      containerWidget: (_, __, child) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24.h,
              horizontal: 480.w,
            ),
            child: Material(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(8),
              child: child,
            ),
          ),
        );
      },
    );
  }
}
