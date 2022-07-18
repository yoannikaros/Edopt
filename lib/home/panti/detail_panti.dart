import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_string/random_string.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' show Random;
import '../../theme.dart';


class DetailPanti extends StatefulWidget {
  final String name;
  final String province;
  final String regency;
  final String address;
  final String district;
  final String openingHours;
  final String closingHours;
  final String image_url;

  const DetailPanti({Key? key,
    required this.name,
    required this.image_url,
    required this.province,
    required this.district,
    required this.regency,
    required this.address,
    required this.openingHours,
    required this.closingHours


  }) : super(key: key);

  @override
  State<DetailPanti> createState() => _DetailPantiState();

}

class _DetailPantiState extends State<DetailPanti> {

  List<String> text = [
    'Ajung',
    'Ambulu',
    'Arjasa',
    'Bangsalsari',
    'Balung',
    'Jelbuk',
    'Jenggawah',
    'Sumbersari',
  ];

  int kabupatenku() {
    var kabupaten = Random().nextInt(8) + 1;
    return kabupaten;
  }

  @override
  Widget build(BuildContext context) {



    Widget header() {

      return Container(
        margin: EdgeInsets.only(top: 21, bottom: 18),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'aset/icon_kembali.png',
                    width: 20,
                  ),
                ),
                SizedBox(
                  width: 84,
                ),
                Text(
                  'Panti Asuhan',
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget gambar() {
      // List<String> gambar = [
      //   'https://i0.wp.com/www.pammalang.or.id/wp-content/uploads/2016/05/cropped-logo-panti.png',
      //   'https://darulaitamalfaruq.or.id/wp-content/uploads/2019/01/img-20190128-wa0009-1331851895.jpg',
      //   'https://sribu-sg.s3.amazonaws.com/assets/media/contest_detail/2012/6/logo-for-social-responsibility-4fdd89173c0aa138dd00009f/4dacb88a7c.jpg',
      //   'https://sribu-sg.s3.amazonaws.com/assets/media/contest_detail/2012/6/logo-for-social-responsibility-4fdd89173c0aa138dd00009f/f09eb3e081.jpg',
      // ];
      //
      // int gambarnya() {
      //   var gambarnya = Random().nextInt(2) + 1;
      //   return gambarnya;
      // }
      return Container(
        margin: EdgeInsets.only(left: 10),
         child:

        CachedNetworkImage(
          imageUrl: widget.image_url,
          width: 289,
          height: 134,
          fit: BoxFit.cover,
        ),
      );
    }

    Widget namayayasan() {
      return Container(
        margin: EdgeInsets.only(top: 20,bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.name,
              style: blackTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    }

    Widget Detailatas() {
      int nomor = 25;
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'aset/icon_jam.png',
                  width: 18,
                ),

                SizedBox(
                  width: 10,
                ),
                Text(
                  '${widget.openingHours} - ${widget.closingHours}',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(

              children: [
                Image.asset(
                  'aset/icon_telepon.png',
                  width: 18,
                ),

                SizedBox(
                  width: 12,
                ),
                Text(
                  '085' + randomNumeric(8),
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget juduldetail() {
      return Container(
        margin: EdgeInsets.only(top: 20,bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             'Detail Panti',
              style: blackTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        ),
      );
    }

    Widget Detailyayasan() {

      return Container(

        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'KABUPATEN',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  widget.regency,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'PROVINSI',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 46,
                ),
                Text(
                  widget.province,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'KECAMATAN',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  widget.district,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'ALAMAT',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 52,
                ),
                Expanded(
                  child: Text(
                   widget.address,
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget ButtomLokasi() {
      List<String> lokasi = [
        'https://www.google.com/maps/place/Yayasan+Panti+Asuhan+Attafakur/data=!4m6!3m5!1s0x2dd696698967a9e7:0xd194edd6259a3ff0!8m2!3d-8.1711609!4d113.7274144!16s%2Fg%2F11c7136qcj?authuser=0&hl=id&rclk=1',
        'https://www.google.com/maps/place/Panti+Asuhan+Attafakur+Putri/data=!4m6!3m5!1s0x2dd6979552b76471:0xf19b5c74aa842a10!8m2!3d-8.181627!4d113.7184444!16s%2Fg%2F11hdg12l88?authuser=0&hl=id&rclk=1',
        'https://www.google.com/maps/place/Panti+Asuhan+Putra+Muhammadiyah+Jember/data=!4m6!3m5!1s0x2dd69681f69db889:0xbf867b6f1a5cd56!8m2!3d-8.1825317!4d113.7109006!16s%2Fg%2F11bw7v3y7m?authuser=0&hl=id&rclk=1',
        'https://www.google.com/maps/place/Panti+Asuhan+NURUL+HUSNA/data=!4m6!3m5!1s0x2dd6944e69643fe7:0xaa6491438a3f5fcd!8m2!3d-8.1567727!4d113.7070232!16s%2Fg%2F11b6jjqjt9?authuser=0&hl=id&rclk=1',
        'https://www.google.com/maps/place/Panti+Yatim+Mambaul+Ulum/data=!4m6!3m5!1s0x2dd6969b14ee819f:0x734358586c7f2f6b!8m2!3d-8.1888157!4d113.7017292!16s%2Fg%2F12q4tlg4v?authuser=0&hl=id&rclk=1',
        'https://www.google.com/maps/place/Panti+Asuhan+Attafakur+Putra/data=!4m6!3m5!1s0x2dd6966b9929b817:0xeb352bea46a069f6!8m2!3d-8.1976808!4d113.7350931!16s%2Fg%2F11c717srjd?authuser=0&hl=id&rclk=1',
      ];

      int location() {
        var location = Random().nextInt(5) + 1;
        return location;
      }

      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: TextButton(
          onPressed: ()  {

          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(47))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
               // margin: EdgeInsets.only(left: 94),
                child: InkWell(
                    child: new Text('Cek Lokasi', style: primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),),
                    onTap: () => launch(lokasi[location()])
                ),
              ),


            ],
          ),
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
              header(),
              gambar(),
              namayayasan(),
              Detailatas(),
              juduldetail(),
              Detailyayasan(),
             ButtomLokasi()
            ],
          ),
        ),
      ),
    );
  }
  

}
