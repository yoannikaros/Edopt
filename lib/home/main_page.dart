import 'package:adopt/home/akun/akun_page.dart';
import 'package:adopt/home/search/home_page.dart';
import 'package:adopt/home/panti/panti_page.dart';
import 'package:adopt/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return ClipRRect(
       // borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        child: BottomAppBar(

          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(

            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },

            backgroundColor: backgroundColor6,
            type: BottomNavigationBarType.fixed,

            items: [

              //membuat icon di navigasi
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_cari.png',
                    width: 25,
                    color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: '',
              ),


              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_anak.png',
                    width: 25,
                    color: currentIndex == 1
                        ? primaryColor
                        : Color(0xff808191), //Ganti warna saat di klik
                  ),
                ),
                label: '',
              ),

              //membuat icon di navigasi
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_profile.png',
                    width: 18,
                    color: currentIndex == 2
                        ? primaryColor
                        : Color(0xff808191), //Ganti warna saat di klik
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return PantiPage();
          break;
        case 2:
          return AkunPage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
        backgroundColor: Colors.white, //warna background
        bottomNavigationBar: customBottomNav(), //navigasi bawah
        body: body());
  }
}
