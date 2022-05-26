import 'package:adopt/cardwidget/detail_newscard.dart';
import 'package:adopt/models/news/official/model.dart';
import 'package:adopt/models/news/provider/news_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

class ListNews extends StatelessWidget {
  const ListNews({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    NewsProvider newsProvider = Provider.of<NewsProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 18,left: 40),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'aset/icon_kembali.png',
                    width: 25,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Berita',
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
      );
    }



    Widget Isi() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  // CardNews(),
                  // CardNews(),
                  // CardNews(),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          header(),
          Isi()
        ],
      ),
    );
  }
}
