import 'package:adopt/auth/provider/google_sign_in.dart';
import 'package:adopt/cardwidget/login_card.dart';
import 'package:adopt/home/akun/about.dart';
import 'package:adopt/home/akun/akun_page.dart';
import 'package:adopt/home/akun/detail_akun.dart';
import 'package:adopt/home/akun/kebijakan.dart';
import 'package:adopt/home/akun/lisensi.dart';
import 'package:adopt/home/artikel/detail_artitkel.dart';
import 'package:adopt/home/artikel/list_news.dart';
import 'package:adopt/home/history/detail_history.dart';
import 'package:adopt/home/landing/landing_page.dart';
import 'package:adopt/home/panti/detail_panti.dart';
import 'package:adopt/home/search/detail_anak.dart';
import 'package:adopt/home/search/detail_date.dart';
import 'package:adopt/home/home_page.dart';
import 'package:adopt/home/main_page.dart';
import 'package:adopt/auth/sign_in_page.dart';
import 'package:adopt/auth/sign_up_page.dart';
import 'package:adopt/home/search/list_anak.dart';
import 'package:adopt/home/search/success.dart';
import 'package:adopt/provider/child_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'auth/sign_in_page.dart';

//void main()=>

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) =>ChildProvider(),
    )
      ],
      child: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LandingPage(),
          routes: {
           // '/landing': (context) => LandingPage(),
            //Auth
            '/sign-in': (context) => SignInPage(),
            '/sign-up': (context) => SignUpPage(),


            //Main Page
            '/main': (context) => MainPage(),

            //Artikel
            '/list-news': (context) => ListNews(),
           // '/detailberita': (context) => DetailNews(),

            //Menu Search
            '/search': (context) => ListAnak(),
            //'/detail-anak': (context) => DetailAnak(),
            '/HomePage': (context) => HomePage(),
           // '/detail_date': (context) => DetailDate(),

            //Menu Akun
            '/profile': (context) => AkunPage(),
            '/detail-akun': (context) => DetailAkun(),
            '/kebijakan': (context) => Kebijakan(),
            '/lisensi': (context) => Lisensi(),
            '/about': (context) => About(),
            '/success': (context) => Success(),

            //Menu Panti asuhan
            //'/detail-panti': (context) => DetailPanti(),

            //Menu history
           // '/detail-hsitory': (context) => DetailHistory(),
          },

        ),
      ),
    );
  }
}
