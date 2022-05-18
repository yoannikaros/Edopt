import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class RiwayatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget contoh(){
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'ini halaman history'
        ),
      );
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              contoh(),
            ],
          ),
        ),
      ),
    );
  }
}
