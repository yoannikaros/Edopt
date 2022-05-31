// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Appointment _$AppointmentFromJson(Map<String, dynamic> json) => Appointment(
      json['id'] as int,
      json['time'] as String,
      json['status'] as String,
      json['orphanage'] as String,
      json['child'] as String,
      json['latitude'] as String,
      json['longtitude'] as String,
    );

Map<String, dynamic> _$AppointmentToJson(Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time,
      'status': instance.status,
      'orphanage': instance.orphanage,
      'child': instance.child,
      'latitude': instance.latitude,
      'longtitude': instance.longtitude,
    };

AppointmentList _$AppointmentListFromJson(Map<String, dynamic> json) =>
    AppointmentList(
      (json['data'] as List<dynamic>)
          .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
      AppointmentMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppointmentListToJson(AppointmentList instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

AppointmentMeta _$AppointmentMetaFromJson(Map<String, dynamic> json) =>
    AppointmentMeta(
      json['current_page'] as int,
      json['last_page'] as int,
    );

Map<String, dynamic> _$AppointmentMetaToJson(AppointmentMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };
