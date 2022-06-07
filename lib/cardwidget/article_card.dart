import 'package:adopt/home/artikel/detail_artitkel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../home/search/detail_anak.dart';
import '../theme.dart';

class ArticleCard extends StatelessWidget {
  final String previewText;
  final String imageUrl;

  const ArticleCard({
    Key? key,
    required this.previewText,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 289,
      height: 134,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: primaryTextColor),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  DetailNews(previewText: previewText, imageUrl: imageUrl),)
          );
        },
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              width: 289,
              height: 134,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(top: 90, left: 10),
              child: Expanded(
                child: Text(
                  previewText,
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
