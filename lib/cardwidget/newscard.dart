import 'package:flutter/material.dart';

import '../theme.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

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
          'aset/icon_artikel.png',
          width: 289,
          height: 134,
          fit: BoxFit.cover,
        ),
            Container(
              margin: EdgeInsets.only(top: 90,left: 10),
              child: Expanded(
                child: Text(
                  'Judul Berita',
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
