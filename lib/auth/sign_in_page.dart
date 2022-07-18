import 'package:adopt/auth/provider/google_sign_in.dart';
import 'package:adopt/cardwidget/login_card.dart';
import 'package:adopt/provider/child_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
              style: blackTextStyle.copyWith(
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

    Widget CariButton() {
      return Container(

        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 590, left:70, right: 50),
        child: TextButton(
          onPressed: () async{
            // await Provider.of<ChildProvider>(context, listen: false).getProducts(1);

            final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
            provider.googleLogin();
          },
          style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(47))),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset(
                  'aset/icon_google.png',
                  width: 24,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Masuk dengan Google',
                  style:
                  blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
                ),
              ),
            ],
          ),
        ),
      );
    }


    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor6,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("aset/image_login.png"),
                fit: BoxFit.cover,
            ),
          ),
          //margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // header(),
             CariButton()

            ],
          ),
        ),
      ),
    );
  }
}
