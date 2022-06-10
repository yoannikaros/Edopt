import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_string/random_string.dart';
import 'dart:math' show Random;
import '../../theme.dart';

class DetailPanti extends StatefulWidget {
  final String name;
  final String? imageUrl;
  final String province;
  final String regency;
  final String district;
  final String address;
  final String openingHours;
  final String closingHours;

  const DetailPanti({Key? key,
    required this.name,
    required this.imageUrl,
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
                    width: 25,
                  ),
                ),
                SizedBox(
                  width: 97,
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
      List<String> gambar = [
        'https://i0.wp.com/www.pammalang.or.id/wp-content/uploads/2016/05/cropped-logo-panti.png',
        'https://darulaitamalfaruq.or.id/wp-content/uploads/2019/01/img-20190128-wa0009-1331851895.jpg',
        'https://sribu-sg.s3.amazonaws.com/assets/media/contest_detail/2012/6/logo-for-social-responsibility-4fdd89173c0aa138dd00009f/4dacb88a7c.jpg',
        'https://sribu-sg.s3.amazonaws.com/assets/media/contest_detail/2012/6/logo-for-social-responsibility-4fdd89173c0aa138dd00009f/f09eb3e081.jpg',
      ];

      int gambarnya() {
        var gambarnya = Random().nextInt(3) + 1;
        return gambarnya;
      }
      return Container(
        margin: EdgeInsets.only(left: 40),
         child:

        CachedNetworkImage(
          imageUrl: gambar[gambarnya()],
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
        margin: EdgeInsets.only(top: 6,bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.address,
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
                  'Jember',
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
                  width: 47,
                ),
                Text(
                  'Jawa Timur',
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
                  width: 27,
                ),
                Text(
                  text[kabupatenku()],
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
                    widget.district,
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
        'Ajung',
        'Ambulu',
        'Arjasa',
        'Bangsalsari',
        'Balung',
        'Jelbuk',
        'Jenggawah',
        'Sumbersari',
      ];

      int location() {
        var location = Random().nextInt(8) + 1;
        return location;
      }
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(47))),
          child: Row(
            children: [

              Container(
                margin: EdgeInsets.only(left: 84),
                child: Text(
                  'CEK LOKASI',
                  style: primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
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
