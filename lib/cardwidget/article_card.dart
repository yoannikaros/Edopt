import 'package:adopt/home/artikel/detail_artitkel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../home/search/detail_anak.dart';
import '../theme.dart';

class ArticleCard extends StatelessWidget {
  final String previewText;
  final String imageUrl;
  final String title;
  final String adminName;
  final String content;
  final String createdAt;
  final String updatedAt;

  const ArticleCard({
    Key? key,
    required this.previewText,
    required this.imageUrl,
    required this.createdAt,
    required this.adminName,
    required this.content,
    required this.title,
    required this.updatedAt
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 289,
        height: 134,
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: primaryTextColor),
        child: Bounceable(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DetailNews(previewText: previewText, imageUrl: imageUrl, adminName: adminName, updatedAt: updatedAt, createdAt: createdAt, title: title, content: content,),)
            );
          },
          child: Stack(
            children: [
              ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.brown,
                  BlendMode.modulate,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: 289,
                    height: 134,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, left: 10),
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
      ),
    );
  }
}
