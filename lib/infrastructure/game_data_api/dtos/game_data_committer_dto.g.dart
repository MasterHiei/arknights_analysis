// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_committer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameDataCommitterDto _$$_GameDataCommitterDtoFromJson(
        Map<String, dynamic> json) =>
    _$_GameDataCommitterDto(
      name: json['name'] as String,
      email: json['email'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_GameDataCommitterDtoToJson(
        _$_GameDataCommitterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'date': instance.date.toIso8601String(),
    };
