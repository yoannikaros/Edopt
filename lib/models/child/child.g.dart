// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Child _$ChildFromJson(Map<String, dynamic> json) => Child(
      json['id'] as int,
      json['name'] as String,
      json['orphanage_name'] as String,
      json['gender'] as String,
      json['age'] as String,
      json['additional_info'] as String,
    );

Map<String, dynamic> _$ChildToJson(Child instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.Name,
      'orphanage_name': instance.orphanageName,
      'gender': instance.gender,
      'age': instance.age,
      'additional_info': instance.additionalInfo,
    };

ChildList _$ChildListFromJson(Map<String, dynamic> json) => ChildList(
      (json['data'] as List<dynamic>)
          .map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
      ChildMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChildListToJson(ChildList instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

ChildMeta _$ChildMetaFromJson(Map<String, dynamic> json) => ChildMeta(
      json['current_page'] as int,
      json['last_page'] as int,
    );

Map<String, dynamic> _$ChildMetaToJson(ChildMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };
