import 'package:flutter/material.dart';

import '../../theme.dart';

class InputRecovery extends StatelessWidget {
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
                  'Cek Handphone Anda',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Kami telah mengirim kode unik ke nomor handphone anda, masukkan kode tersebut dibawah',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget nomorInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 12),
              height: 69,
              width: 69,
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: '', hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 11,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              height: 69,
              width: 69,
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: '', hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 11,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              height: 69,
              width: 69,
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: '', hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 11,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              height: 69,
              width: 69,
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: '', hintStyle: subtitleTextStyle),
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
                  Navigator.pushNamed(context, '/ganti-pw');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28))),
                child: Text(
                  'SELANJUTNYA',
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
