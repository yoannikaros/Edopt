import 'package:flutter/material.dart';

import '../theme.dart';

class ListAnakCard extends StatelessWidget {
  const ListAnakCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-anak');
      },
      child: Card(
        
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [

              Row(
                children: [
                  Text("Rian Maulana",style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.w600),)
                ],
              ),

              Row(
                children: [

                  Image.asset(
                    'aset/icon_gender.png',
                    width: 20,
                  ),

                  SizedBox(width: 7,),

                  Text("Laki-laki",style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),)

                ],
              ),

              Row(
                children: [

                  Image.asset(
                    'aset/icon_anak.png',
                    width: 20,
                  ),

                  SizedBox(width: 7,),

                  Text("8",style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),),

                  SizedBox(width: 7,),

                  Text("Tahun",style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w500),),

                  SizedBox(width: 40,),
                  Text("Panti Asuhan Sejahtera",style: blackTextStyle.copyWith(
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
