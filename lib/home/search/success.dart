import 'dart:async';

import 'package:adopt/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, '/main'));
    super.initState();
  }
//
  @override
  Widget build(BuildContext context) {
    Widget Title() {
      return Container(
        margin: EdgeInsets.only(top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl:
                      'https://i.pinimg.com/736x/16/3c/56/163c5626facbdcba0a6ab00d2a23402c.jpg',
                  width: 350,
                  //height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget about() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sukses dijadwalkan',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            )
          ],
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
            children: [Title(), about()],
          ),
        ),
      ),
    );
  }
}
