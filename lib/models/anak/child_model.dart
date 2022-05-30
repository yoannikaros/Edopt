import 'package:json_annotation/json_annotation.dart';
part 'anak.g.dart';

@JsonSerializable()

class anakModel {
  final int id;
  final String? name;
  @JsonKey(name: 'orphanage_name')
  final String orphanage_name;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'age')
  final String age;
  final String? additional_info;

  anakModel(
      this.id,
      this.name,
      this.orphanage_name,
      this.gender,
      this.age,
      this.additional_info,
      );

  factory anakModel.fromJson(Map<String, dynamic> json) =>
      _$AnakFromJson(json);

  Map<String, dynamic> toJson() => _$AnakToJson(this);

}
