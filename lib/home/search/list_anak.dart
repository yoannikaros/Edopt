import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adopt/cardwidget/listanak_card.dart';

import '../../theme.dart';

class ListAnak extends StatefulWidget {

  @override
  State<ListAnak> createState() => _ListAnakState();
}

class _ListAnakState extends State<ListAnak> {


  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 21, bottom: 18),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'aset/icon_kembali.png',
                    width: 25,
                  ),
                ),
                SizedBox(
                  width: 97,
                ),
                Text(
                  'Cari Anak',
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget TitleGnder() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Text(
          'Jenis Kelamin',
          style: blackTextStyle.copyWith(
              fontSize: 16, fontWeight: FontWeight.w600),
        ),

      );
    }

    Widget Gender() {
      return Container(
        // Drop Down
      );
    }

    Widget TitleUmur() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Text(
          'Umur',
          style: blackTextStyle.copyWith(
              fontSize: 16, fontWeight: FontWeight.w600),
        ),
      );
    }

    Widget SlideUmur() {
      return Container(
        // Drop Down
      );
    }

    Widget ListAnaknya(){
      return Container(
        margin: EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
               ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
                ListAnakCard(),
              ],
            ),
          ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            header(),
            TitleGnder(),
            Gender(),
            TitleUmur(),
            SlideUmur(),
            ListAnaknya()
          ],
        ),
      ),
    );
  }
}
