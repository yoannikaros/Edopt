// import 'package:adopt/cardwidget/detailkunjungan_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../models/appointment/appointment_model.dart';
import '../../network/api_service.dart';
import '../../theme.dart';

class DetailHistory extends StatefulWidget {
  // const DetailHistory({Key? key}) : super(key: key);
  @override
  State<DetailHistory> createState() => _DetailHistoryPageState();
}

class _DetailHistoryPageState extends State<DetailHistory>{

  final PagingController<int, Appointment> _pagingController =
  PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await ApiService.create().getAppointmentList(page: pageKey);
      final isLastPage = newItems.meta.currentPage == newItems.meta.lastPage;
      if (isLastPage) {
        // Gati
        _pagingController.appendLastPage(newItems.data);
      } else {
        final nextPageKey = pageKey + 1;
        // Ganti
        _pagingController.appendPage(newItems.data, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

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
      // return PagedListView<int, Appointment>.separated(
      //   shrinkWrap: true,
      //   primary: false,
      //   pagingController: _pagingController,
      //   builderDelegate: PagedChildBuilderDelegate(
      //     itemBuilder: (context, item, index) => DetailKunjungan(
      //       waktunya : item.time,
      //       statusnya  : item.status,
      //       pantinya: item.orphanage,
      //       anaknya: item.child,
      //     ),
      //   ),
      //   separatorBuilder: (context, index) => const SizedBox(height: 8),
      // );
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