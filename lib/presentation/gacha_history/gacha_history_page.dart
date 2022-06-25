import 'package:badges/badges.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' show Scaffold, DataTableSource, DataCell;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../application/gacha/gacha_history_provider.dart';
import '../../application/gacha/params/get_gacha_history_params.dart';
import '../../application/user/user_provider.dart';
import '../../core/constants/constants.dart';
import '../../core/utils/launch_url.dart';
import '../../domain/gacha/gacha_char.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/core/extensions/date_time_formatter.dart';

final _userProvider = Provider.autoDispose.family(
  (ref, Token token) => ref.watch(userProvider(token)).userOption,
);

class GachaHistoryPage extends ConsumerWidget {
  const GachaHistoryPage(this.token, {Key? key}) : super(key: key);

  final Token token;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userOption = ref.watch(_userProvider(token));
    return userOption.fold(
      () => _progressBar,
      (user) => Scaffold(
        body: _buildDataTable(user.uid),
        backgroundColor: FluentTheme.of(context).scaffoldBackgroundColor,
      ),
    );
  }

  Widget get _progressBar =>
      const SizedBox.expand(child: Center(child: ProgressBar()));

  Widget _buildDataTable(Uid uid) => Consumer(
        builder: (_, ref, __) {
          final params = GetGachaHistoryParams(uid: uid);
          return ref.watch(gachaHistoryProvider(params)).when(
                data: (chars) => PaginatedDataTable2(
                  header: const Text('寻访记录'),
                  columns: const [
                    DataColumn2(label: SizedBox(), size: ColumnSize.S),
                    DataColumn2(label: Text('干员'), size: ColumnSize.L),
                    DataColumn2(label: Text('星级'), size: ColumnSize.S),
                    DataColumn2(label: Text('寻访'), size: ColumnSize.M),
                    DataColumn2(label: Text('获取时间'), size: ColumnSize.L),
                  ],
                  columnSpacing: 60.h,
                  showCheckboxColumn: false,
                  showFirstLastButtons: true,
                  rowsPerPage: pageSize,
                  availableRowsPerPage: const [
                    pageSize,
                    pageSize * 2,
                    pageSize * 5,
                  ],
                  onRowsPerPageChanged: (_) {},
                  wrapInCard: false,
                  source: _DataTableSource(chars),
                  empty: const Center(child: Text('Empty')),
                ),
                error: (_, __) => const SizedBox(),
                loading: () => _progressBar,
              );
        },
      );
}

class _DataTableSource extends DataTableSource {
  _DataTableSource(this.chars);

  final List<GachaChar> chars;

  @override
  DataRow2? getRow(int index) {
    final char = chars[index];
    return DataRow2.byIndex(
      index: index,
      cells: [
        DataCell(Text('${index + 1}')),
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
              style: TextStyle(
                color: char.rarity.color,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        _buildTextCell(char.rarity.title),
        _buildTextCell(char.pool),
        _buildTextCell(char.ts.dateTime.yMMMdHmsString),
      ],
      onTap: () => launch('$prts/w/${char.name}'),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => chars.length;

  @override
  int get selectedRowCount => 0;

  DataCell _buildTextCell(String text) => DataCell(
        Text(
          text,
          style: TextStyle(color: Colors.grey[120], fontSize: 16.sp),
        ),
      );
}
