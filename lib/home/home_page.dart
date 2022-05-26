import 'package:adopt/auth/provider/google_sign_in.dart';
import 'package:adopt/cardwidget/newscard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/news/provider/news_provider.dart';
import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NewsProvider newsProvider = Provider.of<NewsProvider>(context);
    final user = FirebaseAuth.instance.currentUser!;
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                //colum dibungkis expanded
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'Hello,' + user.displayName!,
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    user.email!,
                    style: subtitleTextStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detail-akun');
              },
              child: Container(
                width: 70,
                height: 70,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget CariButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(47))),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset(
                  'aset/icon_search.png',
                  width: 24,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 80, right: 112),
                child: Text(
                  'CARI ANAK',
                  style:
                      primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget NewsTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Text(
              'Artikel terbaru',
              style:
                  blackTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
            ),
            SizedBox(
              width: 90,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/list-news');
              },
              child: Text(
                'Lainnya',
                style: primaryku.copyWith(fontSize: 13, fontWeight: semiBold),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/list-news');
              },
              child: Image.asset(
                'aset/icon_panahkananbiru.png',
                width: 23,
              ),
            ),
          ],
        ),
      );
    }

    Widget PopularNews() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: newsProvider.News.map((news) => NewsCard(news)).toList(),
              )
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [header(), CariButton(), NewsTitle(), PopularNews()],
    );
  }
}
