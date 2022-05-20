import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../theme.dart';

class DetailPanti extends StatelessWidget {
  const DetailPanti({Key? key}) : super(key: key);

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
      return Container(
        width: 320,
        height: 202,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('aset/images_backgroundfirst.png'))),
      );
    }

    Widget namayayasan() {
      return Container(
        margin: EdgeInsets.only(top: 20,bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Yayasan Islam Media Kasih',
              style: blackTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    }

    Widget Detailatas() {
      return Container(
        child: Column(
          children: [
            Row(
              children: [

                Image.asset(
                  'aset/icon_jam.png',
                  width: 17,
                ),

                SizedBox(
                  width: 12,
                ),
                Text(
                  '07:00 - 15:00',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(

              children: [
                Image.asset(
                  'aset/icon_telepon.png',
                  width: 17,
                ),

                SizedBox(
                  width: 12,
                ),
                Text(
                  '08538888',
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
              'Alamat Panti',
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
                  width: 20,
                ),
                Text(
                  'CIREBON',
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
                  width: 37,
                ),
                Text(
                  'JAWA BARAT',
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
                  width: 17,
                ),
                Text(
                  'LEMAHABANG',
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
                  width: 42,
                ),
                Text(
                  'Jl. Patimura No. 5 Bondowoso',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
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
            children: [
              header(),
              gambar(),
              namayayasan(),
              Detailatas(),
              juduldetail(),
              Detailyayasan()
            ],
          ),
        ),
      ),
    );
  }
}
