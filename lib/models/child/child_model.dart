// import 'package:json_annotation/json_annotation.dart';
// import 'package:retrofit/retrofit.dart';
// import 'package:dio/dio.dart';
//
// part 'child.g.dart';
//
// @RestApi(baseUrl: "http://edopt-dev.herokuapp.com")
// abstract class RestClient {
//   factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
//
//   @GET("/tasks")
//   Future<List<childModel>> getTasks();
// }
//
// @JsonSerializable()
// class childModel {
//   String? id;
//   String? name;
//   String? orphanage_name;
//   String? gender;
//   String? age;
//   String? additional_info;
//
//   childModel({this.id, this.name, this.orphanage_name, this.age, this.gender,this.additional_info});
//
//   factory childModel.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
//   Map<String, dynamic> toJson() => _$ChildToJson(this);
// }
