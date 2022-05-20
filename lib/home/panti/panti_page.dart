import 'package:adopt/cardwidget/panti_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class PantiPage extends StatelessWidget {
  const PantiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget Search() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 46,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: backgroundColor5,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'aset/icon_searchpanti.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Cari', hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget TitleHasil() {
      return Container(
        margin: EdgeInsets.only(left: 46, top: 35),
        child: Row(
          children: [
            Text(
              '20 ',
              style: blackTextStyle.copyWith(fontSize: 15, fontWeight: bold),
            ),
            Text(
              'Hasil ditemukan',
              style: blackTextStyle.copyWith(fontSize: 15, fontWeight: bold),
            ),
          ],
        ),
      );
    }

    Widget CardHasil() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ResultPantiCard()
          ],
        ),
      );
    }

    return ListView(
      children: [Search(), TitleHasil(), CardHasil()],
    );
  }
}
