import 'dart:async';
import 'package:flutter/material.dart';
import '../theme.dart';

//sabar masseh


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), ()=> Navigator.pushNamed(context,'/sign-in')
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Text(
          'EDOPT',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
