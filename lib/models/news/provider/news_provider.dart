import 'package:adopt/models/news/news_model.dart';
import 'package:adopt/models/news/provider/news_service.dart';
import 'package:flutter/material.dart';

class NewsProvider with ChangeNotifier{
  List<NewsModel> _News = [];
  List<NewsModel> get News => _News;

  set news(List<NewsModel> news){
    _News = news;
    notifyListeners();
  }

  Future<void> getNews() async {
    try {
      List<NewsModel> news = await NewsService().getNews();
      _News = news;
    } catch (e) {
      print(e);
    }
  }
}