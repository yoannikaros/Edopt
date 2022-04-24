import 'package:adopt/home/akun_page.dart';
import 'package:adopt/home/cari_page.dart';
import 'package:adopt/home/home_page.dart';
import 'package:adopt/home/main_page.dart';
import 'package:adopt/page/sign_in_page.dart';
import 'package:adopt/page/sign_up_page.dart';
import 'package:adopt/page/splash_page.dart';
//import 'package:adopt/page/splash_page.dart';
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
        '/sign-in':(context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/main': (context) => MainPage(),
        '/home': (context) => HomePage(),
        '/cari': (context) => CariPage(),
        '/profile': (context) => AkunPage(),
      },
    );
  }
}
