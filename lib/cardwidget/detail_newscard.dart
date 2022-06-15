import 'package:adopt/home/artikel/detail_artitkel.dart';
import 'package:adopt/util.dart';
import 'package:animated_shimmer/animated_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import '../theme.dart';

class CardNews extends StatelessWidget {
  final String admin;
  final String? title;
  final String previewText;
  final String createdAt;
  final String imageUrl;

  const CardNews({
    Key? key,
    required this.admin,
    required this.title,
    required this.previewText,
    required this.createdAt,
    required this.imageUrl,
  }) : super(key: key);

  //INI LIST BERITA YANG DITULISAN LAINNYA

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      child: Card(

        child: Bounceable(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailNews(
                    previewText: previewText, imageUrl: imageUrl,
                    adminName: admin,
                    updatedAt: '',
                    createdAt: createdAt,
                    title: title!,
                    content: '',
                  )),
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
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 240,
                  ),
                ),
              ),

              SizedBox(
                height: 18,
              ),

              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.asset(
                      'aset/icon_user.png',
                      width: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      admin,
                      style: primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: semiBold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      Util.toReadableTime(DateTime.parse(createdAt)),
                      style: primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: semiBold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    Text(
                      title!,
                      style: primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      previewText,
                      style: primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: semiBold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
