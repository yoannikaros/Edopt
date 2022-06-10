import 'package:adopt/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//
import '../../auth/provider/google_sign_in.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    Widget header() {
      return Container(
          margin: EdgeInsets.only(top: 29,left: 28,bottom: 61),
          child: Row(
            children: [
              Container(
                width: 87,
                height: 87,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.displayName!,
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Image.asset(
                        'aset/icon_telepon.png',
                        width: 19,
                      ),
                      SizedBox(width: 7,),
                      Text(
                        '082230634412',
                        style: subtitleTextStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  ),

                  SizedBox(height: 5,),

                  Row(
                    children: [
                      Image.asset(
                        'aset/icon_email.png',
                        width: 19,
                      ),
                      SizedBox(width: 7,),
                      Text(
                        user.email!,
                        style: subtitleTextStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        );
    }

    Widget umumTitle(){
      return Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              margin: EdgeInsets.only(left: 12,bottom: 14),
              child: Text(
                'UMUM',
                style: subtitleTextStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w700),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 30,bottom: 14),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/detail-akun');
                },
                child: Text(
                  'Preferensi Akun',
                  style: subtitleTextStyle.copyWith(fontSize: 15,fontWeight: FontWeight.w400),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 12,bottom: 20),
              child: Text(
                'LAINNNYA',
                style: subtitleTextStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w700),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 30,bottom: 11),
              child: Text(
                'Mode Malam',
                style: subtitleTextStyle.copyWith(fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 30,bottom: 11),
              child: Text(
                'Tentang Edopt',
                style: subtitleTextStyle.copyWith(fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 30,bottom: 11),
              child: Text(
                'Lisensi',
                style: subtitleTextStyle.copyWith(fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 25),
              child: TextButton(onPressed: () {
                final provider =
              Provider.of<GoogleSignInProvider>(context,listen: false);
              provider.logout();  },
                child: Text(
                  'Keluar',style: subtitleTextStyle.copyWith(fontSize: 15,fontWeight: FontWeight.w500),
                ),

              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [header(),
        umumTitle()],
    );
  }
}
