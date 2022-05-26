import 'package:adopt/home/artikel/list_news.dart';
import 'package:adopt/models/news/official/model.dart';
import 'package:flutter/material.dart';

class KoneksiBerita extends StatelessWidget {
  const KoneksiBerita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Berita>(
        future: fetchBerita(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // return Text(snapshot.data!.admin_name);
            return ListNews();
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),


    );
  }
}
