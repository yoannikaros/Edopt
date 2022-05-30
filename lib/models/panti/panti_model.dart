import 'package:json_annotation/json_annotation.dart';
part 'panti.g.dart';

@JsonSerializable()
class Panti {
  final int id;
  final String? name;

  @JsonKey(name: 'image_url')
  final String image_url;

  @JsonKey(name: 'province')
  final String province;

  @JsonKey(name: 'regency')
  final String regency;

  @JsonKey(name: 'district')
  final String district;

  @JsonKey(name: 'address')
  final String address;

  @JsonKey(name: 'opening_hours')
  final String opening_hours;
  @JsonKey(name: 'closing_hours')
  final String closing_hours;

  Panti(
      this.id,
      this.name,
      this.image_url,
      this.province,
      this.regency,
      this.district,
      this.address,
      this.opening_hours,
      this.closing_hours,
      );

  factory Panti.fromJson(Map<String, dynamic> json) =>
      _$PantiFromJson(json);

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

//