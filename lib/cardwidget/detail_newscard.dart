import 'package:adopt/util.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../theme.dart';

class CardNews extends StatelessWidget {
  final String admin;
  final String title;
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

  //iNI LIST BERITA YANG DITULISAN LAINNYA

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detailberita');
        },
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
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
                    width: 5,
                  ),
                  Text(
                    admin,
                    style: primaryTextStyle.copyWith(
                        fontSize: 13, fontWeight: semiBold),
                  ),
                  SizedBox(
                    width: 120,
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
                    height: 150,
                  ),
                  Text(
                    title,
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
    );
  }
}
