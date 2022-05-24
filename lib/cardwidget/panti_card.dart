import 'package:flutter/material.dart';

import '../theme.dart';

class ResultPantiCard extends StatelessWidget {
  const ResultPantiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: (){
       Navigator.pushNamed(context, '/detail-panti');
     },
     child: Card(

       color: Colors.white,
       child: Container(
       width: 180,
         padding: EdgeInsets.all(20),
         child: Column(
           children: [
             Row(
               children: [
                 Expanded(
                   child: Text("Panti Asuhan Majalengka",style: blackTextStyle.copyWith(
                       fontSize: 15, fontWeight: FontWeight.w600),),
                 )
               ],
             ),

             SizedBox(height: 30,),

             Row(
               children: [

                 Image.asset(
                   'aset/icon_lokasi.png',
                   width: 20,
                 ),

                 SizedBox(width: 7,),

                 Text("Cirebon",style: blackTextStyle.copyWith(
                     fontSize: 14, fontWeight: FontWeight.w500),)

               ],
             ),


             Row(
               children: [

                 Image.asset(
                   'aset/icon_jam.png',
                   width: 18,
                 ),

                 SizedBox(width: 7,),

                 Text("07:00 - 15:00",style: blackTextStyle.copyWith(
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
