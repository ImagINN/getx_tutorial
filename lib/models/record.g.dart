// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordImpl _$$RecordImplFromJson(Map<String, dynamic> json) => _$RecordImpl(
      weight: (json['weight'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      note: json['note'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$RecordImplToJson(_$RecordImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'date': instance.date.toIso8601String(),
      'note': instance.note,
      'photoUrl': instance.photoUrl,
    };
