import 'package:adopt/cardwidget/daftarkunjungan_card.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';
class ListPanti extends StatelessWidget {
  const ListPanti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('List News'),
          ],
        ),
      );
    }

    Widget CardDaftar() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
DaftarKunjungan()

          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              CardDaftar()
            ],
          ),
        ),
      ),
    );
  }
}
