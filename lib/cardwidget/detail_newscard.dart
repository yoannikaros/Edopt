import 'package:flutter/material.dart';

import '../theme.dart';

class CardNews extends StatelessWidget {
  const CardNews({Key? key}) : super(key: key);

  //iNI LIST BERITA YANG DITULISAN LAINNYA

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30,left: 30,bottom: 10),
      child: Card(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/detailberita');
          },
          child: Stack(
            children: [
              Image.asset(
                'aset/images_news.png',
                width: 323,
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.asset(
                      'aset/icon_name.png',
                      width: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Icon',
                      style: primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: semiBold),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Text(
                      '3 hari yang lalu',
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
                )
                    ,
                    Text(
                      'Judul',
                      style: primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Keterangan',
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
