import 'package:flutter/material.dart';

import '../../theme.dart';

class DetailNews extends StatelessWidget {
  const DetailNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Masih Proses',style: primaryku.copyWith(fontSize: 16, fontWeight: medium),)
          ],
        ),
      );
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
            ],
          ),
        ),
      ),
    );
  }
}
