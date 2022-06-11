import 'package:adopt/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Kebijakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: 5),
                child: Image.asset(
                  'aset/icon_kembali.png',
                  width: 24,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget Title() {
      return Container(
        margin: EdgeInsets.only(top: 30,bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Kebijakan Adopt',style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ))
          ],
        ),
      );
    }

    Widget about() {
      String text = lorem(paragraphs: 3, words: 65);
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Text(text,style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ))
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
              Title(),
              about()

            ],
          ),
        ),
      ),
    );
  }
}
