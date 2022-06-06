import 'dart:convert';

import 'package:adopt/models/v2/child_model.dart';
import 'package:adopt/models/v3/childModel.dart';
//import 'package:adopt/models/v3/childModel.dart';
import 'package:http/http.dart' as http;


class Fetchchild {
  var data = [];
  List<Data> results = [];
  String urlList = 'http://edopt-dev.herokuapp.com/api/children';

  Future<List<Data>> getchild({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {

        data = json.decode(response.body)['data'];
        results = data.map((e) => Data.fromJson(e)).toList();
        if (query!= null){
          results = results.where((element) => element.gender!.toLowerCase().contains((query.toLowerCase()))).toList();
        }
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}