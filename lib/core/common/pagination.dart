import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/constants.dart';

part 'pagination.freezed.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required int current,
    required int total,
  }) = _Pagination;

  const Pagination._();

  int get totalPage => (total / Constants.pageSize).ceil();

  bool get isLastPage => current >= totalPage;
}
