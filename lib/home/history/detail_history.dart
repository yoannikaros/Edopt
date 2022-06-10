import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class DetailHistory extends StatelessWidget {
  final String time;
  final String status;
  final String orphanage;
  final String child;
  final String longitude;
  final String latitude;

  const DetailHistory({
    Key? key,
    required this.time,
    required this.status,
    required this.orphanage,
    required this.child,
    required this.longitude,
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
              Text('Alamat Panti',
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              Text('Panti Asuhan Sejahtera Jl. Patimura No. 5 Bondowoso',
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              Text('Nama Anak',
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              Text(child,
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "To learn more "
                            ),
                            TextSpan(
                                text: "Click here",
                                recognizer: TapGestureRecognizer()..onTap =  () async{
                                  var url = "https://www.youtube.com/channel/UCwxiHP2Ryd-aR0SWKjYguxw?view_as=subscriber";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }
                            ),
                          ]
                      ))
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
