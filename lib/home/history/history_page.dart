import 'package:adopt/cardwidget/daftarkunjungan_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class RiwayatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('Daftar Kunjungan',
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    }

    Widget DaftarKunjunganku() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
DaftarKunjungan(),
            DaftarKunjungan()
          ],
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
              DaftarKunjunganku()
            ],
          ),
        ),
      ),
    );
  }
}
