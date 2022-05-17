import 'package:flutter/material.dart';

import '../../theme.dart';

class gantiPw extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'UBAH KATA SANDI',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),

          ],
        ),
      );
    }

    Widget nomorInput() {
      return Container(
        margin: EdgeInsets.only(top: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'aset/icon_email.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Kata Sandi',
                            hintStyle: subtitleTextStyle),
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

    Widget nextButoom() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 320,
              height: 46,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28))),
                child: Text(
                  'UBAH KATA SANDI',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
            ),
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
              //route
              header(),
              nomorInput(),
              //passwordInput(),
              nextButoom(),
              //Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}
