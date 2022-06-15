class childmodel {
  List<Data>? data;

  childmodel({this.data});

  childmodel.fromJson(Map<String, dynamic> json) {
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
  String? additionalInfo;

  Data(
      {this.id,
        this.name,
        this.orphanageName,
        this.gender,
        this.age,
        this.additionalInfo});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    orphanageName = json['orphanage_name'];
    gender = json['gender'];
    age = json['age'];
    additionalInfo = json['additional_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['orphanage_name'] = this.orphanageName;
    data['gender'] = this.gender;
    data['age'] = this.age;
    data['additional_info'] = this.additionalInfo;
    return data;
  }
}