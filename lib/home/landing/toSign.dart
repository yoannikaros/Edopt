import 'package:adopt/auth/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../cardwidget/login_card.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(ToSign());
}

class ToSign extends StatelessWidget {
  const ToSign({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginAkun(),

      ),
    );
  }
}
