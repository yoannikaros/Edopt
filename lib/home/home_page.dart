import 'package:adopt/auth/provider/google_sign_in.dart';
import 'package:adopt/cardwidget/article_card.dart';
import 'package:adopt/home/akun/detail_akun.dart';
import 'package:adopt/home/artikel/list_news.dart';
import 'package:adopt/home/search/list_anak.dart';
import 'package:adopt/models/article.dart';
import 'package:adopt/network/api_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import '../theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return ListView(
      primary: true,
      scrollDirection: Axis.vertical,
      children: [
        header(context, user),
        CariButton(context),
        articleTitle(context),
        SizedBox(
          height: 134,
          child: _articlePreview(),
        )
      ],
    );
  }

  Widget header(context, User user) {
    return Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                //colum dibungkis expanded
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,' + user.displayName!,
                    style: blackTextStyle.copyWith(
                        fontSize: 15, fontWeight: semiBold),
                  ),
                  Text(
                    user.email!,
                    style: subtitleTextStyle.copyWith(fontSize: 13),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DetailAkun()),
                );
              },
              child: Container(
                width: 70,
                height: 70,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
              ),
            ),
          ],
        ),
    );
  }

  Widget CariButton(context) {
    return Container(

        height: 40,
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: TextButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/search');
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ListAnak()),
            );
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(47))),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Image.asset(
                  'aset/icon_search.png',
                  width: 19,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 70, right: 112),
                child: Text(
                  'CARI ANAK',
                  style:
                      primaryTextStyle.copyWith(fontSize: 13, fontWeight: bold),
                ),
              ),
            ],
          ),
        ),
    );
  }

  Widget articleTitle(context) {
    return  Container(
        margin: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin,bottom: 20),
        child: Row(
          children: [
            Text(
              'Artikel terbaru',
              style: blackTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
            SizedBox(
              width: 95,
            ),

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ListNews()),
                );
              },
              child: Row(
                children: [
                  Text(
                    'Lainnya',
                    style: primaryku.copyWith(fontSize: 13, fontWeight: semiBold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'aset/icon_panahkananbiru.png',
                    width: 23,
                  ),
                ],
              ),
            )

          ],
        ),
    );
  }

  Widget _articlePreview() {
    return FutureBuilder<ArticleList>(
        future: ApiService.create().getArticlesList(perPage: 4),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var articles = snapshot.data!.data;
            return ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return ArticleCard(
                  previewText: articles[index].previewText,
                  imageUrl: articles[index].imageUrl,
                  createdAt: articles[index].createdAt,
                  updatedAt: articles[index].updatedAt,
                  content: '',
                  adminName: articles[index].adminName,
                  title: articles[index].title!,
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
