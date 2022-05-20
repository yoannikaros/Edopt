import 'package:flutter/material.dart';

class ResultPantiCard extends StatelessWidget {
  const ResultPantiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detail-panti');
              },
              child: Text("Percobaan"))
        ],
      ),
    );
  }
}
