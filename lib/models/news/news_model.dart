import 'dart:convert';
import 'package:http/http.dart' as http;


Future<Berita> fetchBerita() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Berita.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Berita {
  final int id;
  final String admin_name;
  final String preview_text;
  final String image_url;

  const Berita({
    required this.id,
    required this.admin_name,
    required this.preview_text,
    required this.image_url
  });

  factory Berita.fromJson(Map<String, dynamic> json) {
    return Berita(
        id: json['id'],
        admin_name: json['admin_name'],
        preview_text: json['preview_text'],
        image_url: json['image_url']
    );
  }
}