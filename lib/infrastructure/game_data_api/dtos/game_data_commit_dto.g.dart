// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_commit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameDataCommitDto _$$_GameDataCommitDtoFromJson(Map<String, dynamic> json) =>
    _$_GameDataCommitDto(
      committer: GameDataCommitterDto.fromJson(
          json['committer'] as Map<String, dynamic>),
      message: json['message'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_GameDataCommitDtoToJson(
        _$_GameDataCommitDto instance) =>
    <String, dynamic>{
      'committer': instance.committer,
      'message': instance.message,
      'url': instance.url,
    };
