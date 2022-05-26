import 'dart:convert';

import 'package:adopt/models/news/news_model.dart';
import 'package:http/http.dart' as http;

class NewsService {
  //String baseUrl = 'http://edopt-dev.herokuapp.com/api/articles';

  Future<List<NewsModel>> getNews() async {

    // var url = '$baseUrl/news';
    // var headers = {'Content-Type': 'application/json'};
    // var response = await http.get(url,headers: headers);

    final response = await http.get(Uri.parse('http://edopt-dev.herokuapp.com/api/articles'));

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data'];
      List<NewsModel> News = [];

      for (var item in data) {
        News.add(NewsModel.fromJson(item));
      }

      return News;

    } else {
      throw Exception('Gagal get News');
    }
  }
}
