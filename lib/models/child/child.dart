import 'package:json_annotation/json_annotation.dart';
part 'child.g.dart';

@JsonSerializable()
class Child {
  final int id;
  @JsonKey(name: 'name')
  final String Name;
  @JsonKey(name: 'orphanage_name')
  final String orphanageName;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'age')
  final String age;
  @JsonKey(name: 'additional_info')
  final String additionalInfo;

  Child(
    this.id,
    this.Name,
    this.orphanageName,
    this.gender,
    this.age,
    this.additionalInfo,
  );

  factory Child.fromJson(Map<String, dynamic> json) =>
      _$ChildFromJson(json);

  Map<String, dynamic> toJson() => _$ChildToJson(this);
}

@JsonSerializable()
class ChildList {
  final List<Child> data;
  final ChildMeta meta;

  ChildList(this.data, this.meta);

  factory ChildList.fromJson(Map<String, dynamic> json) =>
      _$ChildListFromJson(json);

  Map<String, dynamic> toJson() => _$ChildListToJson(this);
}

@JsonSerializable()
class ChildMeta {
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;

  ChildMeta(this.currentPage, this.lastPage);

  factory ChildMeta.fromJson(Map<String, dynamic> json) =>
      _$ChildMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ChildMetaToJson(this);
}
