import 'package:adopt/cardwidget/detail_newscard.dart';
import 'package:adopt/models/article.dart';
import 'package:adopt/network/api_service.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../theme.dart';

class ListNews extends StatefulWidget {
  const ListNews({Key? key}) : super(key: key);

  @override
  State<ListNews> createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  // Ganti ke model mu
  final PagingController<int, Article> _pagingController =
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
      final newItems = await ApiService.create().getArticlesList(page: pageKey);

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
          primary: true, children: [header(context), Container(child: Isi())]),
    );
  }

  Widget header(context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 18, left: 50),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                Image.asset(
                  'aset/icon_kembali.png',
                  width: 25,
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Text(
                'Berita',
                style: blackTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget Isi() {
    // Panti
    return PagedListView<int, Article>.separated(
      shrinkWrap: true,
      primary: false,
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => GestureDetector(
          child: CardNews(
            admin: item.adminName,
            title: 'Title',
            previewText: item.previewText,
            createdAt: item.createdAt,
            imageUrl: item.imageUrl,
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
    );
  }
}
