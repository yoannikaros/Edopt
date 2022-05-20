import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 40,left: 40),
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

    Widget detail1(){
      return Container(
        margin: EdgeInsets.only(left: 40,top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('09:45',
                style: blackTextStyle.copyWith(
                    fontSize: 30, fontWeight: FontWeight.bold)),
            Text('2022-01-22',
                style: blackTextStyle.copyWith(
                    fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      );
    }
    Widget CardDetail(){
      return Container(
        padding: EdgeInsets.all(20),

        child: Card(

          child: Container(
            padding: EdgeInsets.all(20),
            //margin: EdgeInsets.only(left: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Alamat Panti',
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: FontWeight.bold)),

                Text('Panti Asuhan Sejahtera Jl. Patimura No. 5 Bondowoso',
                      style: blackTextStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(height: 20,),

                Text('Nama Anak',
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: FontWeight.bold)),

                Text('Raihan ',
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: FontWeight.w500)),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Text('Cek Lokasi ',
                      style: primaryku.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
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
