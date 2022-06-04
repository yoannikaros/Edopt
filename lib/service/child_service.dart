import 'dart:convert';
import 'package:adopt/models/v2/child_model.dart';
import 'package:http/http.dart' as http;

class ChildService {
  String baseUrl = 'http://edopt-dev.herokuapp.com';

  Future<List<ChildModel>> getProducts(
      String? id,
      ) async {
    var url = '$baseUrl/api/children/$id';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ChildModel> products = [];

      for (var item in data) {
        products.add(ChildModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
