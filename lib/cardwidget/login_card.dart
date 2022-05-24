import 'package:adopt/home/main_page.dart';
import 'package:adopt/home/search/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth/sign_in_page.dart';
class LoginAkun extends StatelessWidget {
  const LoginAkun({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            } else if(snapshot.hasData){
              return MainPage();
            } else if (snapshot.hasError){
              return Center(child: Text('Ada masalah'),);
            } else {
              return SignInPage();
            }
          }),
    );
  }
}
