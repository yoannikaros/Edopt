import 'package:json_annotation/json_annotation.dart';
part 'appointment.g.dart';

@JsonSerializable()
class Appointment {
  final int id;
  @JsonKey(name: 'time')
  final String time;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'orphanage')
  final String orphanage;
  @JsonKey(name: 'child')
  final String child;
  @JsonKey(name: 'latitude')
  final String latitude;
  @JsonKey(name: 'longtitude')
  final String longtitude;

  Appointment(
    this.id,
    this.time,
    this.status,
    this.orphanage,
    this.child,
    this.latitude,
    this.longtitude,
    
  );

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}

@JsonSerializable()
class AppointmentList {
  final List<Appointment> data;
  final AppointmentMeta meta;

  AppointmentList(this.data, this.meta);

  factory AppointmentList.fromJson(Map<String, dynamic> json) =>
      _$AppointmentListFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentListToJson(this);
}

@JsonSerializable()
class AppointmentMeta {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;

  AppointmentMeta(this.currentPage, this.lastPage);

  factory AppointmentMeta.fromJson(Map<String, dynamic> json) =>
      _$AppointmentMetaFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentMetaToJson(this);
}
