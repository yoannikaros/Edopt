import 'package:adopt/home/search/detail_date.dart';
import 'package:adopt/models/v3/childModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class DetailAnak extends StatelessWidget {
  final String id;
  final String name;
  final String orphanageName;
  final String gender;
  final String age;

  //DetailAnak(this.anakan);

  const DetailAnak(
      {Key? key,
        required this.id,
      required this.name,
      required this.orphanageName,
      required this.gender,
      required this.age})
      : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('aset/icon_kembali.png', width: 25),
            ),
          ],
        ),
      );
    }

    Widget NameChild() {
      return Container(
        margin: EdgeInsets.only(top: 29),
        child: Text(name,
            style: blackTextStyle.copyWith(
                fontSize: 30, fontWeight: FontWeight.bold)),
      );
    }

    Widget BioChild() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'aset/icon_pengguna.png',
                  width: 19,
                  height: 19,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  gender,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Image.asset(
                  'aset/icon_gender.png',
                  width: 19,
                  height: 19,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  age,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Th',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Image.asset(
                  'aset/icon_rumah.png',
                  width: 19,
                  height: 19,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  orphanageName,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget InfoTitle() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text('Informasi Lainnya',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold)),
      );
    }

    Widget IsiBio() {
      return Container(
        margin: EdgeInsets.only(top: 17),
        child: Text('detaill',
            style: blackTextStyle.copyWith(fontSize: 15, fontWeight: regular)),
      );
    }

    Widget AdopsoButtom() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailDate(
                        name: '$name',
                        orphanageName: '$orphanageName',
                        gender: '$gender',
                        age: '$age',
                       id: '$id',
                      )),
            );
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(47))),
          child: Text(
            'ADOPSI',
            style: primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              NameChild(),
              BioChild(),
              InfoTitle(),
              IsiBio(),
              AdopsoButtom()
            ],
          ),
        ),
      ),
    );
  }
}
