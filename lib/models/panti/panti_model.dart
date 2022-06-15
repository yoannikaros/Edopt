import 'package:json_annotation/json_annotation.dart';
part 'panti_model.g.dart';

@JsonSerializable()
class Panti {
  final int id;
  final String name;


  @JsonKey(name: 'province')
  final String province;

  @JsonKey(name: 'regency')
  final String regency;

  @JsonKey(name: 'district')
  final String district;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'opening_hours')
  final String openingHours;

  @JsonKey(name: 'closing_hours')
  final String closingHours;

  Panti(
    this.id,
    this.name,
    this.province,
    this.regency,
    this.district,
    this.address,
    this.openingHours,
    this.closingHours,
  );

  factory Panti.fromJson(Map<String, dynamic> json) => _$PantiFromJson(json);

  Map<String, dynamic> toJson() => _$PantiToJson(this);
}

@JsonSerializable()
class PantiList {
  final List<Panti> data;
  final PantiMeta meta;

  PantiList(this.data, this.meta);

  factory PantiList.fromJson(Map<String, dynamic> json) =>
      _$PantiListFromJson(json);

  Map<String, dynamic> toJson() => _$PantiListToJson(this);
}

@JsonSerializable()
class PantiMeta {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;

  PantiMeta(this.currentPage, this.lastPage);

  factory PantiMeta.fromJson(Map<String, dynamic> json) =>
      _$PantiMetaFromJson(json);

  Map<String, dynamic> toJson() => _$PantiMetaToJson(this);
}
