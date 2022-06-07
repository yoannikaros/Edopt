import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../theme.dart';

class DetailNews extends StatelessWidget {
  final String previewText;
  final String imageUrl;

  const DetailNews({
    Key? key,
    required this.previewText,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {



    Widget isiberita(){
      return Stack(
        children: [
          Image.asset('aset/images_isiberita.png', width: 400),

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
                    'Dari Edopt, untuk anak Indonesia  ',
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
                      'Dani',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 165,),
                    Text(
                      '3 hari yang lalu',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),

                  ],
                )
              ],
            ),
          ),

        ],
      );
    }

    Widget isi2(){
      return Container(
        margin: EdgeInsets.only(top: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3 hari yang lalu',
              style: blackTextStyle.copyWith(
                  fontSize: 17, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20,),

            Text(previewText,style: blackTextStyle.copyWith(
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
