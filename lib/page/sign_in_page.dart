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

    Widget nomorInput() {
      return Container(
        margin: EdgeInsets.only(top: 70),
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
                            hintText: 'Nomor Telepon', hintStyle: subtitleTextStyle),
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
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            'sign in',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ngga punya akun ?',
              style: subtitleTextStyle.copyWith(fontSize: 12),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
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
              nomorInput(),
              //passwordInput(),
              signInButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
