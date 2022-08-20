import 'package:badges/badges.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' show Scaffold, DataTableSource, DataCell;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/gacha/gacha_history_provider.dart';
import '../../application/user/user_provider.dart';
import '../../core/constants/constants.dart';
import '../../domain/gacha/gacha_char.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/core/extensions/date_time_formatter.dart';
import '../core/routing/route_params.dart';
import '../core/routing/router.dart';
import 'widgets/index.dart';

final _userProvider = Provider.autoDispose.family(
  (ref, Token token) => ref.watch(userProvider(token)).userOption,
);

class GachaHistoryPage extends ConsumerWidget {
  const GachaHistoryPage(this.token, {super.key});

  final Token token;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userOption = ref.watch(_userProvider(token));
    return userOption.fold(
      () => _progressBar,
      (user) => Scaffold(
        body: Column(
          children: [
            const GachaHistoryFilter(),
            Expanded(child: _buildDataTable(context, user.uid)),
          ],
        ),
        backgroundColor: FluentTheme.of(context).scaffoldBackgroundColor,
      ),
    );
  }

  Widget get _progressBar =>
      const SizedBox.expand(child: Center(child: ProgressBar()));

  Widget _buildDataTable(BuildContext context, Uid uid) {
    DataColumn2 buildColumn(
      String label, {
      ColumnSize size = ColumnSize.M,
    }) =>
        DataColumn2(
          label: Text(
            label,
            style: DefaultTextStyle.of(context).style.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
          ),
          size: size,
        );
    return Consumer(
      builder: (_, ref, __) {
        return ref.watch(gachaHistoryProvider(uid)).when(
              data: (chars) => PaginatedDataTable2(
                columns: [
                  const DataColumn2(label: SizedBox(), size: ColumnSize.S),
                  buildColumn('干员', size: ColumnSize.L),
                  buildColumn('星级', size: ColumnSize.S),
                  buildColumn('寻访'),
                  buildColumn('获取时间', size: ColumnSize.L),
                ],
                columnSpacing: 60.h,
                showCheckboxColumn: false,
                showFirstLastButtons: true,
                availableRowsPerPage: const [
                  pageSize,
                  pageSize * 2,
                  pageSize * 5,
                ],
                onRowsPerPageChanged: (_) {},
                wrapInCard: false,
                source: _DataTableSource(context, chars),
                empty: const Center(child: Text('暂无数据')),
              ),
              error: (_, __) => const SizedBox(),
              loading: () => _progressBar,
            );
      },
    );
  }
}

class _DataTableSource extends DataTableSource {
  _DataTableSource(this.context, this.chars);

  final BuildContext context;
  final List<GachaChar> chars;

  @override
  DataRow2? getRow(int index) {
    final char = chars[index];
    return DataRow2.byIndex(
      index: index,
      cells: [
        _buildTextCell('${index + 1}'),
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
            child: Text(
              char.name,
              style: DefaultTextStyle.of(context).style.copyWith(
                    color: char.rarity.color,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        _buildTextCell(char.rarity.title),
        _buildTextCell(char.pool),
        _buildTextCell(char.ts.dateTime.yMMMdHmsString),
      ],
      onTap: () => Routes.webview.push(
        context,
        extra: WebviewParams(
          initialUrl: '$prts/w/${Uri.encodeComponent(char.name)}',
          enableNavigationBar: true,
        ),
      ),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => chars.length;

  @override
  int get selectedRowCount => 0;

  DataCell _buildTextCell(String text) => DataCell(
        DefaultTextStyle.merge(
          style: TextStyle(
            color: Colors.grey[120],
            fontSize: 15.sp,
          ),
          child: Text(text),
        ),
      );
}
