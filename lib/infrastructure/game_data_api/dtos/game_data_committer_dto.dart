import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';

part 'game_data_committer_dto.freezed.dart';
part 'game_data_committer_dto.g.dart';

@freezed
class GameDataCommitterDto with _$GameDataCommitterDto {
  const factory GameDataCommitterDto({
    required String name,
    required String email,
    required DateTime date,
  }) = _GameDataCommitterDto;

  factory GameDataCommitterDto.fromJson(Json json) =>
      _$GameDataCommitterDtoFromJson(json);
}
