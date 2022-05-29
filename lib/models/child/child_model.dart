import 'dart:convert';
import 'package:http/http.dart' as http;


Future<Child> fetchBerita() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Child.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Child {
  final int id;
  final String name;
  final String orphanage_name;
  final String gender;
  final String age;
  final String additional_info;

  const Child({
    required this.id,
    required this.name,
    required this.orphanage_name,
    required this.gender,
    required this.age,
    required this.additional_info
  });

  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
        id: json['id'],
        name: json['name'],
        orphanage_name: json['orphanage_name'],
        gender: json['gender'],
        age: json['age'],
        additional_info: json['additional_info']
    );
  }
}