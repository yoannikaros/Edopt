import 'package:adopt/home/search/success.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../service/appoinment_post.dart';
import '../../theme.dart';
import 'package:intl/intl.dart';

class DetailDate extends StatefulWidget {
  final String id;
  final String name;
  final String orphanageName;
  final String gender;
  final String age;

  const DetailDate(
      {Key? key,
      required this.id,
      required this.name,
      required this.orphanageName,
      required this.gender,
      required this.age})
      : super(key: key);

  @override
  State<DetailDate> createState() => _DetailDateState();
}

class _DetailDateState extends State<DetailDate> {
  repository Repo = repository();
  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 20),
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

    Widget TitleDetail1() {
      return Container(
        margin: EdgeInsets.only(left: 12, top: 20),
        child: Text('Detail Adopsi',
            style: blackTextStyle.copyWith(
                fontSize: 15, fontWeight: FontWeight.bold)),
      );
    }

    Widget Detail1() {
      return Container(
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.only(top: 16, left: 17, bottom: 11),
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'aset/icon_pengguna.png',
                  width: 19,
                  height: 19,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  widget.name,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 15, fontWeight: medium),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'aset/icon_rumah.png',
                  width: 15,
                  height: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  widget.orphanageName,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 15, fontWeight: medium),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'aset/icon_gender.png',
                  width: 15,
                  height: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  widget.gender,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 15, fontWeight: medium),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    'aset/icon_pengguna.png',
                    width: 19,
                    height: 19,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    widget.age,
                    style: subtitleTextStyle.copyWith(
                        fontSize: 15, fontWeight: medium),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget TitleDetailAnak() {
      return Container(
        margin: EdgeInsets.only(left: 12, top: 15),
        child: Text('Detail Anak',
            style: blackTextStyle.copyWith(
                fontSize: 15, fontWeight: FontWeight.bold)),
      );
    }

    Widget Detailanak() {
      return Container(
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.only(top: 16, left: 17, bottom: 11),
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.name,
                  style: subtitleTextStyle.copyWith(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'aset/icon_jam.png',
                  width: 15,
                  height: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  '07:00 - 15:00',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 15, fontWeight: medium),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    'aset/icon_telepon.png',
                    width: 19,
                    height: 19,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    '2',
                    style: subtitleTextStyle.copyWith(
                        fontSize: 15, fontWeight: medium),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget TitleJadwal() {
      return Container(
        margin: EdgeInsets.only(left: 12, top: 15),
        child: Text('Tanggal Kunjungan',
            style: blackTextStyle.copyWith(
                fontSize: 15, fontWeight: FontWeight.bold)),
      );
    }

    Widget jadwal() {
      return Container(
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.only(top: 16, left: 17, bottom: 11),
        decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
        child: Column(
          children: [
            TextField(
              controller: dateinput,
              decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today), //icon of text field
                  labelText: "Enter Date" //label text of field
                  ),
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100));
                if (pickedDate != null) {
                  print(
                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate =
                      DateFormat('yyyy/MM/dd').format(pickedDate);
                  print(
                      formattedDate); //formatted date output using intl package =>  2021-03-16
                  //you can implement different kind of Date Format here according to your requirement

                  setState(() {
                    dateinput.text =
                        formattedDate; //set output date to TextField value.
                  });
                } else {
                  print("Date is not selected");
                }
              },
            )
          ],
        ),
      );
    }

    Widget AdopsiButtom() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: ElevatedButton(
          onPressed: () async {
            bool response = await Repo.postData(dateinput.text, widget.id);
            if (response) {
              // Navigator.of(context).popAndPushNamed('/success');
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Success()),
              );
            } else {
              print('GAGAL');
            }
          },
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(47))),
          child: Text(
            'JADWALKAN',
            style: primaryTextStyle.copyWith(fontSize: 15, fontWeight: bold),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              TitleDetail1(),
              Detail1(),
              // TitleDetailAnak(),
              // Detailanak(),
              TitleJadwal(),
              jadwal(),
              AdopsiButtom()
            ],
          ),
        ),
      ),
    );
  }
}
