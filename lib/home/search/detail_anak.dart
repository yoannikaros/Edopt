import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class DetailAnak extends StatelessWidget {
  const DetailAnak({Key? key}) : super(key: key);

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
            SizedBox(
              width: 270,
            ),
            Image.asset('aset/icon_save.png', width: 25),
          ],
        ),
      );
    }

    Widget NameChild() {
      return Container(
        margin: EdgeInsets.only(top: 29),
        child: Text('Rian Maulana',
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
                  'Laki Laki',
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
                  'aset/icon_gender.png',
                  width: 19,
                  height: 19,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  '7 Tahun',
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
                  'Panti Asuhan Sejahtera',
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
        child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Semper tortor ut volutpat sit eu egestas ac pharetra mauris. Eleifend iaculis consequat nibh ut mi, cursus at. Egestas tincidunt ut nullam in neque, porttitor. Blandit blandit ut ac ipsum neque, mauris hendrerit. Id lobortis dignissim porta ut commodo tortor condimentum massa. Nulla accumsan pulvinar sed maecenas et cum. Risus vel diam fringilla pellentesque. Platea vel vestibulum enim ultrices eu, dignissim. Rhoncus morbi sed arcu morbi magna quisque nunc orci venenatis. Vestibulum.',
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
            Navigator.pushNamed(context, '/detail_date');
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
