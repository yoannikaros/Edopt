import 'package:adopt/home/akun_page.dart';
import 'package:adopt/home/cari_page.dart';
import 'package:adopt/home/home_page.dart';
import 'package:adopt/home/panti_page.dart';
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
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: backgroundColor1,
            type: BottomNavigationBarType.fixed,
            items: [

              //membuat icon di navigasi
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_home.png',
                    width: 21,
                    color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                  ),
                ),
                label: '',
              ),


              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(
                    'aset/icon_profile.png',
                    width: 18,
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
          return CariPage();
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
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //button keranjang berada ditengah
        bottomNavigationBar: customBottomNav(), //navigasi bawah
        body: body());
  }
}
