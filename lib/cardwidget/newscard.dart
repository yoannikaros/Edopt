import 'package:adopt/models/news/news_model.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class NewsCard extends StatelessWidget {

  final NewsModel news;
  NewsCard(this.news);
//INI LIST BERITA YANG DI HOME PAGE

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 289,
      height: 134,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: primaryTextColor),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/detailberita');
        },
        child: Stack(
          children: [
          Image.asset(
          // 'aset/icon_artikel.png'
          news.image_url,
          width: 289,
          height: 134,
          fit: BoxFit.cover,
        ),
            Container(
              margin: EdgeInsets.only(top: 90,left: 10),
              child: Expanded(
                child: Text(
                  news.admin_name,
                  style:
                  primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
