// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panti_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Panti _$PantiFromJson(Map<String, dynamic> json) => Panti(
  json['id'] as int,
  json['name'] as String?,
  json['image_url'] as String,
  json['province'] as String,
  json['regency'] as String,
  json['district'] as String,
  json['address'] as String,
  json['opening_hours'] as String,
  json['closing_hours'] as String,
);

Map<String, dynamic> _$PantiToJson(Panti instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'image_url': instance.image_url,
  'province': instance.province,
  'regency': instance.regency,
  'district': instance.district,
  'address': instance.address,
  'opening_hours': instance.opening_hours,
  'closing_hours': instance.closing_hours,
};

PantiList _$PantiListFromJson(Map<String, dynamic> json) => PantiList(
  (json['data'] as List<dynamic>)
      .map((e) => Panti.fromJson(e as Map<String, dynamic>))
      .toList(),
  PantiMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PantiListToJson(PantiList instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

PantiMeta _$PantiMetaFromJson(Map<String, dynamic> json) => PantiMeta(
  json['current_page'] as int,
  json['last_page'] as int,
);

Map<String, dynamic> _$PantiMetaToJson(PantiMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };
//