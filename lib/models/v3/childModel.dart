class ChildModel2 {
  List<Data>? data;

  ChildModel2({this.data});

  ChildModel2.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? orphanageName;
  String? gender;
  int? age;

  Data({this.id, this.name, this.orphanageName, this.gender, this.age});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    orphanageName = json['orphanage_name'];
    gender = json['gender'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['orphanage_name'] = this.orphanageName;
    data['gender'] = this.gender;
    data['age'] = this.age;
    return data;
  }
}