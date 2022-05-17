import 'package:adopt/home/akun_page.dart';
import 'package:adopt/home/home_page.dart';
import 'package:adopt/home/main_page.dart';
import 'package:adopt/page/forgetPW/sendmail.dart';
import 'package:adopt/page/sign_in_page.dart';
import 'package:adopt/page/sign_up_page.dart';
import 'package:adopt/page/splash_page.dart';
import 'package:adopt/search/searchchild.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
         '/': (context) => SplashPage(),

        //Auth
        '/sign-in':(context) => SignInPage(),
        '/forget':(context) => SendMail(),
        '/sign-up': (context) => SignUpPage(),

        //Menu Home
        '/main': (context) => MainPage(),
        '/home': (context) => HomePage(),

        //Menu Search
        '/search': (context) => cariAnak(),

        //Menu Akun
        '/profile': (context) => AkunPage(),
      },
    );
  }
}
