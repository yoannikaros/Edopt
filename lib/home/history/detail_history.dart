import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class DetailHistory extends StatelessWidget {
  final String time;
  final String status;
  final String orphanage;
  final String? child;
  final String? longtitude;
  final String? latitude;

  const DetailHistory({
    Key? key,
    required this.time,
    required this.status,
    required this.orphanage,
    required this.child,
    required this.longtitude,
    required this.latitude,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 40, left: 40),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('aset/icon_kembali.png', width: 25),
            ),
          ],
        ),
      );
    }

    Widget detail1() {
      return Container(
        margin: EdgeInsets.only(left: 40, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(orphanage,
                style: blackTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            Text(time,
                style: blackTextStyle.copyWith(
                    fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      );
    }

    Widget CardDetail() {
      return Container(
        padding: EdgeInsets.all(20),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            //margin: EdgeInsets.only(left: 60),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Nama Anak',
                      style: blackTextStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  Text(child!,
                      style: blackTextStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 20,
                  ),
              Text('Status',
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              Text(status,
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w500)),



            ]),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          header(),
          detail1(),
          CardDetail(),
        ],
      ),
    );
  }
}
