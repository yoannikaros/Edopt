import 'package:adopt/page/splash_page.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //membuat route
        //chjccgcvjvk
        '/': (context) => SplashPage(),

      },
    );
  }
}
