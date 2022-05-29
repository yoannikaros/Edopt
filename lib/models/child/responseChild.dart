import 'package:adopt/models/child/child_model.dart'; 
import 'package:flutter/material.dart';

class KoneksiBerita extends StatelessWidget {
  const KoneksiBerita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Child>(
        future: fetchBerita(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.name);
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
