import 'package:adopt/cardwidget/newscard.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    'Hello, Yoan',
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    '@Yoannikaros',
                    style: subtitleTextStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('aset/image_profile.png'))),
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
          child: Text(
            'CARI ANAK',
            style: primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
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
              style: blackTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
            ),
            SizedBox(width: 103 ,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/list-news');
              },
              child: Text(
                'Lainnya',
                style: primaryku.copyWith(fontSize: 13, fontWeight: semiBold),
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
                children: [
                  NewsCard(),
                  NewsCard(),
                  NewsCard(),
                ],
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
