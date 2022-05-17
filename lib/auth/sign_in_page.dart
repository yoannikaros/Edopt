import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

//Sedang Mencari Referensi

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Sialakan Login Terlebih dahulu',
              style: subtitleTextStyle,
            ),
          ],
        ),
      );
    }

    Widget Gmail() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48,
            width: 318,
            margin: EdgeInsets.only(top: 30),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              style: TextButton.styleFrom(
                  backgroundColor: backgroundColor6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28))),
              child: Text(
                'Masuk dengan google',
                style: primaryku.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          ),
        ],
      );
    }

    Widget nomorInput() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 20),
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
                            hintText: 'Nomor Telepon',
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

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 150,
              height: 46,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                style: TextButton.styleFrom(
                    backgroundColor: backgroundColor6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28))),
                child: Text(
                  'DAFTAR',
                  style: primaryku.copyWith(fontSize: 16, fontWeight: medium),
                ),
              ),
            ),
            SizedBox(
              width: 21,
            ),
            Container(
              width: 150,
              height: 46,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28))),
                child: Text(
                  'MASUK',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Saya lupa kata sandi ?',
              style: subtitleTextStyle.copyWith(fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/forget');
              },
              child: Text(
                ' Pulihkan',
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            )
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
              //  Gmail(),
              nomorInput(),
              //passwordInput(),
              signInButton(),
              //Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
