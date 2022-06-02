import 'package:adopt/cardwidget/daftarkunjungan_card.dart';
import 'package:adopt/cardwidget/panti_card.dart';
import 'package:adopt/models/panti/panti_model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../network/api_service.dart';
import '../../theme.dart';

class ListPanti extends StatefulWidget {
  const ListPanti({Key? key}) : super(key: key);

  @override
  State<ListPanti> createState() => _ListPantiState();
}

class _ListPantiState extends State<ListPanti> {
  final PagingController<int, Panti> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void iniState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final panti = await ApiService.create().getPantiList(
          pageKey, 'query', '-7.9879114227835215', '113.92077702590909');
      final isLastPage = panti.meta.currentPage == panti.meta.lastPage;
      if (isLastPage) {
        // Gati
        _pagingController.appendLastPage(panti.data);
      } else {
        final nextPageKey = pageKey + 1;
        // Ganti
        _pagingController.appendPage(panti.data, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('List News'),
          ],
        ),
      );
    }

    Widget CardDaftar() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            //DaftarKunjungan()
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [header(), CardDaftar()],
          ),
        ),
      ),
    );
  }
  Widget Isi() {
    // Panti
    //Make Grid View
    return PagedListView<int, Panti>.separated(
      shrinkWrap: true,
      primary: false,
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => ResultPantiCard(
          name: item.name,
          district: item.district,
          openingHours: item.openingHours,
          closingHours: item.closingHours,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
