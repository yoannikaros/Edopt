import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class ListNews extends StatelessWidget {
  const ListNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('List News',style: primaryku.copyWith(fontSize: 16, fontWeight: medium),),
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
