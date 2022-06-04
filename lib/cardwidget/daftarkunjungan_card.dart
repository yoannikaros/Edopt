import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class DaftarKunjungan extends StatelessWidget {
  final String waktunya;
  final String statusnya;
  final String pantinya;

  const DaftarKunjungan({Key? key, required this.waktunya,required this.statusnya
    , required this.pantinya}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
       Navigator.pushNamed(context, '/detail-hsitory');
     },
      child: Card(
        child: Container(
          padding:EdgeInsets.all(20),
          child: Column(
            children: [

              Row(
                children: [

                  Expanded(
                    child: Text(pantinya,style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),),
                  ),


                  SizedBox(width: 48,),

                  Text(waktunya,style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),)

                ],
              ),

              Row(
                children: [
                  Text(statusnya,style: blackTextStyle.copyWith(
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
