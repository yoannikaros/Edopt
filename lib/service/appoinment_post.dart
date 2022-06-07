import 'dart:convert';
import 'package:http/http.dart' as http;

class repository {
  final _baseUrl = "http://edopt-dev.herokuapp.com";

  Future<dynamic> postData(String time, String child_id) async {
    try {
      final response = await http.post(
          Uri.parse(_baseUrl + '/api/appointments'),
          body: {"time": time, "child_id": child_id});
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
