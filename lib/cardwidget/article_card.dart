import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
          borderRadius: BorderRadius.circular(6), color: primaryTextColor),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detailberita');
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
