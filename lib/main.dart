import 'package:adopt/auth/forgetPW/change.dart';
import 'package:adopt/auth/forgetPW/input_recovery.dart';
import 'package:adopt/home/akun/akun_page.dart';
import 'package:adopt/home/akun/detail_akun.dart';
import 'package:adopt/home/artikel/detail_artitkel.dart';
import 'package:adopt/home/artikel/list_news.dart';
import 'package:adopt/home/history/history_page.dart';
import 'package:adopt/home/landing/first_landing.dart';
import 'package:adopt/home/panti/detail_panti.dart';
import 'package:adopt/home/search/detail_anak.dart';
import 'package:adopt/home/search/detail_date.dart';
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
        '/sign-up': (context) => SignUpPage(),

        //Recovery
        '/forget':(context) => SendMail(),
        '/input-recovery':(context) => InputRecovery(),
        '/ganti-pw':(context) => gantiPw(),

        //Main Page
        '/main': (context) => MainPage(),

        //Artikel
        '/list-news': (context) => ListNews(),
        '/detailberita': (context) => DetailNews(),

        //Menu Search
        '/search': (context) => ListAnak(),
        '/detail-anak': (context) => DetailAnak(),
        '/HomePage': (context) => HomePage(),
        '/detail_date': (context) => DetailDate(),

        //Menu Akun
        '/profile': (context) => AkunPage(),
        '/detail-akun': (context) => DetailAkun(),

        //Menu Panti
        '/detail-panti': (context) => DetailPanti()

        //Menu history
       // '/history': (context) => RiwayatPage(),

      },
    );
  }
}
