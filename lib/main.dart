import 'package:adopt/home/akun/akun_page.dart';
import 'package:adopt/home/landing/first_landing.dart';
import 'package:adopt/home/search/home_page.dart';
import 'package:adopt/home/main_page.dart';
import 'package:adopt/auth/forgetPW/sendmail.dart';
import 'package:adopt/auth/sign_in_page.dart';
import 'package:adopt/auth/sign_up_page.dart';
import 'package:adopt/auth/splash_page.dart';
import 'package:adopt/home/search/list_anak.dart';
import 'package:flutter/material.dart';

import 'auth/sign_in_page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
         '/': (context) => SplashPage(),
       // '/': (context) => landing(),

        //Auth
        '/sign-in':(context) => SignInPage(),
        '/forget':(context) => SendMail(),
        '/sign-up': (context) => SignUpPage(),

        //Menu Home
        '/main': (context) => MainPage(),
        '/home': (context) => HomePage(),

        //Menu Search
        '/search': (context) => ListAnak(),

        //Menu Akun
        '/profile': (context) => AkunPage(),
      },
    );
  }
}
