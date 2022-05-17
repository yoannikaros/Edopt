import 'package:flutter/material.dart';

import '../theme.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 289,
      height: 134,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: primaryTextColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'aset/icon_artikel.png',
            width: 289,
            height: 134,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
