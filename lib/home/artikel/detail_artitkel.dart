import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../theme.dart';
import '../../util.dart';

class DetailNews extends StatelessWidget {
  final String previewText;
  final String imageUrl;
  final String title;
  final String adminName;
  final String content;
  final String createdAt;
  final String updatedAt;


  const DetailNews({
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



    Widget isiberita(){
      return Stack(
        children: [
         // Image.asset('aset/images_isiberita.png', width: 400),

          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.brown,
              BlendMode.modulate,
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
            ),
          ),

          Container(
           padding: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                      child: Image.asset('aset/icon_arahkiriputih.png', width: 25)),
                ),

                SizedBox(height: 45,),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    '$previewText',
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                ),

                SizedBox(height: 55,),

                Row(
                  children: [

                    Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset('aset/icon_user.png', width: 20)),
                    Text(
                      adminName,
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 50,),
                    Text(
                      Util.toReadableTime(DateTime.parse(createdAt)),
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),

                  ],
                ),

              ],
            ),
          ),

        ],
      );
    }

    Widget isi2(){
      String text = lorem(paragraphs: 3, words: 60);
      return Container(
        margin: EdgeInsets.only(top: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),

            Text( text,style: blackTextStyle.copyWith(
                  fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          isiberita(),
          isi2()
        ],
      ),
    );

  }
}
