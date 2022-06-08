import 'package:badges/badges.dart';
import 'package:dartx/dartx.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' show Material, DataCell;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../application/gacha/gacha_pie_chart_provider.dart';
import '../../../application/gacha/gacha_provider.dart';
import '../../../application/gacha/gacha_stats_provider.dart';
import '../../../application/gacha/states/gacha_state.dart';
import '../../../core/enums/rarity.dart';
import '../../../domain/gacha/gacha_stats.dart';
import '../../../domain/user/user.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../../infrastructure/core/extensions/date_time_formatter.dart';
import '../../core/common/widgets/app_flush_bar.dart';

final _uidProvider = Provider.autoDispose<Uid>(
  (_) => throw UnimplementedError(),
);

class PortalGachaStatsView extends ConsumerWidget {
  const PortalGachaStatsView(this.user, {Key? key}) : super(key: key);

  final User user;

  AutoDisposeStateNotifierProvider<GachaNotifier, GachaState>
      get _gachaProvider => gachaProvider(user);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenState(context, ref);

    return ref.watch(_gachaProvider).map(
          fetching: (state) {
            double? value;
            if (state.total != null) {
              value = (state.current / state.total!) * 100;
            }
            return _buildProgressBar(
              value: value,
              label: '正在获取第${state.current}页数据',
            );
          },
          success: (_) => ProviderScope(
            overrides: [_uidProvider.overrideWithValue(user.uid)],
            child: const _StatsView(),
          ),
          failure: (_) => const _ErrorView(),
        );
  }

  Widget _buildProgressBar({
    double? value,
    String label = '',
  }) =>
      SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
      (_, next) => next.maybeWhen(
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
        orElse: () {
          return null;
        },
      ),
    );
  }
}

class _StatsView extends ConsumerWidget {
  const _StatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uid = ref.watch(_uidProvider);
    return ref.watch(gachaStatsProvider(uid)).when(
          data: (stats) {
            final items = stats.statsPerPool
                .toList()
                .map((pair) => _PieChart(pair.first, pair.second))
                .toList();
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: items,
            );
          },
          error: (_, __) => const SizedBox(),
          loading: () => const SizedBox(),
        );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class _PieChart extends StatelessWidget {
  const _PieChart(this.pool, this.stats, {Key? key}) : super(key: key);

  final String pool;
  final GachaStats stats;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
          _poolNameLabel,
          SizedBox(height: 16.h),
          _indicators,
          SizedBox(width: 300.w, height: 300.h, child: _chart),
          _pullDateRangeLabel,
          SizedBox(height: 16.h),
          _totalPullsLabel,
          ..._totalPullsWithoutRareLabels,
          SizedBox(height: 16.h),
          ..._pullRateLabels,
        ],
      ),
    );
  }

  Widget get _poolNameLabel => Text(
        pool,
        style: TextStyle(
          color: Colors.grey[150],
          fontSize: 20.sp,
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
                  ref.watch(gachaPieChartProvider).isTouched(rarity);
              final alpha = isTouched ? 180 : 255;
              return Container(
                width: indicatorSize.width,
                height: indicatorSize.height,
                decoration: BoxDecoration(
                  color: rarity.color.withAlpha(alpha),
                  shape: BoxShape.rectangle,
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
            onEnter: (_) => ref.read(gachaPieChartProvider).touch(rarity),
            onExit: (_) => ref.read(gachaPieChartProvider).touch(null),
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
                ref.watch(gachaPieChartProvider).isTouched(rarity);
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

  Widget get _totalPullsLabel => RichText(
        text: TextSpan(
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
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  List<Widget> get _totalPullsWithoutRareLabels => Rarity.rares
      .map(
        (rarity) => RichText(
          text: TextSpan(
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
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
      .toList();

  List<Widget> get _pullRateLabels => Rarity.rares.map(
        (rarity) {
          final total = stats.filter(rarity).length;
          final details = Row(
            children: [
              Expanded(child: Text('$total')),
              SizedBox(width: 12.w),
              Text('[${stats.caclPullRate(rarity)}]'),
            ],
          );
          return DefaultTextStyle(
            style: TextStyle(
              color: rarity.color,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            child: SizedBox(
              width: 200.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('${rarity.title}：'),
                  SizedBox(width: 12.w),
                  if (total == 0) const Text('无') else Expanded(child: details),
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
      ref.read(gachaPieChartProvider).touch(null);
      return;
    }
    final index = touchedSection.touchedSectionIndex;
    final rarity = sources.elementAtOrNull(index)?.first;
    ref.read(gachaPieChartProvider).touch(rarity);

    //* Tap
    if (event is FlTapUpEvent && rarity != null) {
      _showCharsTable(context, rarity);
    }
  }

  Future<void> _showCharsTable(BuildContext context, Rarity rarity) async {
    final columns = [
      DataColumn2(label: const SizedBox(), fixedWidth: 24.w),
      DataColumn2(label: const Text('干员'), fixedWidth: 180.w),
      const DataColumn2(label: Text('抽数'), size: ColumnSize.S),
      const DataColumn2(label: Text('获取时间')),
    ];
    final rows = stats.filterWithPulls(rarity).reversed.mapIndexed(
      (index, pair) {
        final char = pair.first;
        final pulls = pair.second;
        return DataRow2.byIndex(
          index: index,
          cells: [
            DataCell(
              Text(
                '${index + 1}',
                style: TextStyle(color: Colors.grey[80], fontSize: 16.sp),
              ),
            ),
            DataCell(
              Badge(
                badgeContent: Text(
                  'NEW',
                  style: TextStyle(color: Colors.white, fontSize: 10.sp),
                ),
                position: BadgePosition.topEnd(top: 3.h, end: -40.w),
                shape: BadgeShape.square,
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                borderRadius: BorderRadius.circular(4.w),
                showBadge: char.isNew,
                child: Text(
                  char.name,
                  style: TextStyle(color: rarity.color, fontSize: 16.sp),
                ),
              ),
            ),
            DataCell(
              Text(
                '$pulls',
                style: TextStyle(color: Colors.grey[120], fontSize: 16.sp),
              ),
            ),
            DataCell(
              Text(
                char.ts.dateTime.yMMMdHmsString,
                style: TextStyle(color: Colors.grey[120], fontSize: 14.sp),
              ),
            ),
          ],
        );
      },
    ).toList();
    final dataTable = DataTable2(
      columns: columns,
      headingTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
      ),
      rows: rows,
    );

    await showCustomModalBottomSheet<void>(
      context: context,
      builder: (_) => Container(
        height: ScreenUtil().screenHeight * 0.4,
        padding: EdgeInsets.only(left: 12.w, top: 16.h, right: 12.w),
        child: Column(
          children: [
            Text(
              '[$pool] ${rarity.fullTitle}抽取记录',
              style: TextStyle(
                color: Colors.grey[130],
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: dataTable),
          ],
        ),
      ),
      containerWidget: (_, __, child) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24.h,
              horizontal: 640.w,
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
