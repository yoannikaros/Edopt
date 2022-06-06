import 'package:adopt/home/history/detail_history.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class DaftarKunjungan extends StatelessWidget {

  final String time;
  final String status;
  final String orphanage;

  const DaftarKunjungan({Key? key,


    required this.time,
    required this.status,
    required this.orphanage,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  DetailHistory(time: '$time', status: '$status', orphanage: '$orphanage',)),
      );
    },
      child: Card(
        child: Container(
          padding:EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [

                  Expanded(
                    child: Text(orphanage,style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),),
                  ),


                  SizedBox(width: 48,),

                  Text(time,style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),)

                ],
              ),

              Row(
                children: [
                  Text(status,style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),),


                  SizedBox(width: 160,),

                  Text("2022-01-22",style: blackTextStyle.copyWith(
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
