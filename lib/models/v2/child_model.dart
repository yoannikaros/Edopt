class ChildModel {
  int? id;
  String? name;
  String? orphanage_name;
  String? gender;
  String? age;
  String? additional_info;

  ChildModel({
    this.id,
    this.name,
    this.orphanage_name,
    this.gender,
    this.age,
    this.additional_info,
  });

  ChildModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    orphanage_name = json['orphanage_name'];
    gender = json['gender'];
    age = json['age'];
    additional_info = json['additional_info'];
  }
//
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'orphanage_name': orphanage_name,
      'gender': gender,
      'age': age,
      'additional_info': additional_info,
    };
  }
}

class UninitializedProductModel extends ChildModel {}
