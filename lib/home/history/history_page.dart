import 'package:adopt/cardwidget/daftarkunjungan_card.dart';
import 'package:adopt/models/appointment/appointment_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../network/api_service.dart';
import '../../theme.dart';

class RiwayatPage extends StatefulWidget {

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {

  // Ganti ke model mu
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

      // final panti = await ApiService.create().getPantiList(pageKey, query, lat, lng)
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(
          primary: true, children: [header(context), Container(child: DaftarKunjunganku())]),
    );
  }

    Widget header(context) {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('Daftar Kunjungan',
                  style: blackTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      );
    }

    Widget DaftarKunjunganku() {
      return PagedListView<int, Appointment>.separated(
      shrinkWrap: true,
      primary: false,
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => DaftarKunjungan(
          waktunya : item.time,
          statusnya  : item.status,
          pantinya: item.orphanage,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      );
    }

    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   backgroundColor: Colors.white,
    //   body: Container(
    //     margin: EdgeInsets.only(right: 20,left: 20),
    //     child: ListView(
    //         primary: true, children: [
    //         header(context),
    //         Container(child: DaftarKunjunganku(),)
    //       ],
    //     ),
    //   )
    // );
  }

