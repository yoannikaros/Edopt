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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // DaftarKunjungan(),
              // DaftarKunjungan(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 20,left: 20),
        child: ListView(
          children: [
            header(),
            DaftarKunjunganku()
          ],
        ),
      )
    );
  }
}
