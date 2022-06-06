import 'package:adopt/cardwidget/panti_card.dart';
import 'package:adopt/models/panti/panti_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../network/api_service.dart';
import '../../theme.dart';

class PantiPage extends StatefulWidget {
  const PantiPage({Key? key}) : super(key: key);

  @override
  State<PantiPage> createState() => _PantiPageState();
}

class _PantiPageState extends State<PantiPage> {
  // Ganti ke model mu
  final PagingController<int, Panti> _pagingController =
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
      final panti = await ApiService.create().getPantiList(page: pageKey);
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
  Widget build(BuildContext contexrt) {

    Widget Search() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 46,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: backgroundColor5,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'aset/icon_searchpanti.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: blackTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Cari', hintStyle: subtitleTextStyle),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }



    Widget CardHasil() {
      return Container(
        margin: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                child: Column(
                  children: [
                  PagedListView<int, Panti>.separated(
                  shrinkWrap: true,
                  primary: false,
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate(
                    itemBuilder: (context, item, index) => ResultPantiCard(
                      name: item.name,
                      district: item.district,
                      openingHours: item.openingHours,
                      closingHours: item.closingHours, imageUrl: '', regency: '', address: '', province: '',
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(height: 8),
                ),
                  ],
                ),
              ),
            )
          ],
        ),
      );


    }

    return ListView(
      children: [

        CardHasil()
      ],
    );
  }
}
