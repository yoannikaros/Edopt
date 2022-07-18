import 'package:adopt/home/history/detail_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class DaftarKunjungan extends StatelessWidget {

  final String time;
  final String status;
  final String orphanage;
  final String? child;
  final String? longtitude;
  final String? latitude;

  const DaftarKunjungan({Key? key,


    required this.time,
    required this.status,
    required this.orphanage,
    required this.child,
    required this.longtitude,
    required this.latitude,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  DetailHistory(
          status: status,
          orphanage: orphanage,
          time: time,
          longtitude: longtitude!,
          latitude: latitude!,
          child: child!,
        )),
      );
    },
      child:  Card(
        margin: EdgeInsets.only(top: 10, left: 20,right: 20),
        child: Container(
            padding:EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [

                    Expanded(
                      child: Text(orphanage,style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(status,style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),),

                    SizedBox(width: 52,),

                    Text(time,style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),)
                  ],
                ),
              ],
            ),
          ),
      ),

    );
  }
}
