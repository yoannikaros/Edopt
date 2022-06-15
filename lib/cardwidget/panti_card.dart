import 'package:adopt/home/panti/detail_panti.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class ResultPantiCard extends StatelessWidget {
  final String name;
  //final String imageUrl;
  final String province;
  final String regency;
  final String address;
  final String district;
  final String openingHours;
  final String closingHours;

  const ResultPantiCard({
    Key? key,
    required this.name,
   // required this.imageUrl,
    required this.province,
    required this.district,
    required this.regency,
    required this.address,
    required this.openingHours,
    required this.closingHours,
    // required this.longitude,
    // required this.latitude
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
//
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPanti(
                name: '$name',
                regency: '$regency',
                district: '$district',
                province: '$province',
                openingHours: '$openingHours',
               // imageUrl: '',
                address: '$address',
                closingHours: '$closingHours'),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        child: Container(
          width: 180,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: blackTextStyle.copyWith(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    'aset/icon_lokasibiru.png',
                    width: 20,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    district,
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'aset/icon_jambiru.png',
                    width: 18,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '$openingHours - $closingHours',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
