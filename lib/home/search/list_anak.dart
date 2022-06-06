//import 'package:adopt/models/v3/childModel.dart';
import 'package:adopt/home/search/search.dart';
import 'package:adopt/network/apisearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adopt/cardwidget/listanak_card.dart';
import 'package:provider/provider.dart';

//import '../../models/v2/child_model.dart';
import '../../models/v3/childModel.dart';
import '../../provider/child_provider.dart';
import '../../theme.dart';

class ListAnak extends StatefulWidget {
  @override
  State<ListAnak> createState() => _ListAnakState();
}

class _ListAnakState extends State<ListAnak> {
  Fetchchild _child = Fetchchild();
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cari Anak'),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: SearchUser());
              },
              icon: Icon(Icons.search_sharp),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: FutureBuilder<List<Data>>(
              future: _child.getchild(),
              builder: (context, snapshot) {
                var data = snapshot.data;
                return ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Row(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${data?[index].id}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${data?[index].name!}',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text(
                                            'Gender:',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          SizedBox(width: 10),

                                          Text(
                                            '${data?[index].gender}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text(
                                            'Age:',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                          SizedBox(width: 10),

                                          Text(
                                            '${data?[index].age}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),

                                        ],
                                      )

                                    ])
                              ],
                            ),
                            // trailing: Text('More Info'),
                          ),
                        ),
                      );
                    });
              }),
        ),
      ),
    );

    // bool isClick = false;
    // TextEditingController childController = TextEditingController(text: '');
    //
    // //
    // // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // // UserModel user = authProvider.user;
    // ChildProvider productProvider = Provider.of<ChildProvider>(context);
    //
    // Widget header() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 21, bottom: 18),
    //     child: Column(
    //       children: [
    //         Row(
    //           children: [
    //             GestureDetector(
    //               onTap: () {
    //                 Navigator.pop(context);
    //               },
    //               child: Image.asset(
    //                 'aset/icon_kembali.png',
    //                 width: 25,
    //               ),
    //             ),
    //             SizedBox(
    //               width: 97,
    //             ),
    //             Text(
    //               'Cari Anak',
    //               style: blackTextStyle.copyWith(
    //                   fontSize: 18, fontWeight: FontWeight.w700),
    //             )
    //           ],
    //         )
    //       ],
    //     ),
    //   );
    // }
    //
    // Widget Search() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 20, left: 20, right: 20),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Container(
    //           height: 46,
    //           padding: EdgeInsets.symmetric(horizontal: 16),
    //           decoration: BoxDecoration(
    //               color: backgroundColor5,
    //               borderRadius: BorderRadius.circular(30)),
    //           child: Center(
    //             child: Row(
    //               children: [
    //                 GestureDetector(
    //                   onTap: () async {
    //                     // await Provider.of<ChildProvider>(context, listen: false)
    //                     //     .getChilds(childController.text);
    //                     // setState(() {
    //                     //   Future.delayed(
    //                     //       Duration(seconds: 2), () => isClick = true);
    //                     //
    //                     //   // isClick = true;
    //                     // });
    //                     // // listAnaknya();
    //                     // // .........(childCOt.....text)
    //                   },
    //                   child: Image.asset(
    //                     'aset/icon_searchpanti.png',
    //                     width: 17,
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   width: 16,
    //                 ),
    //                 Expanded(
    //                   child: TextFormField(
    //                     keyboardType: TextInputType.text,
    //                     controller: childController,
    //                     style: blackTextStyle,
    //                     decoration: InputDecoration.collapsed(
    //                         hintText: 'Cari', hintStyle: subtitleTextStyle),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   );
    // }
    //
    // Widget TitleGnder() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 15),
    //     child: Text(
    //       'Jenis Kelamin',
    //       style: blackTextStyle.copyWith(
    //           fontSize: 16, fontWeight: FontWeight.w600),
    //     ),
    //   );
    // }
    //
    // Widget Gender() {
    //   return Container(
    //       // Drop Down
    //       );
    // }
    //
    // Widget TitleUmur() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 15),
    //     child: Text(
    //       'Umur',
    //       style: blackTextStyle.copyWith(
    //           fontSize: 16, fontWeight: FontWeight.w600),
    //     ),
    //   );
    // }
    //
    // Widget SlideUmur() {
    //   return Container(
    //       // Drop Down
    //       );
    // }
    //
    // Widget listAnaknya() {
    //   return Container(
    //     margin: EdgeInsets.only(top: 10),
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.vertical,
    //       child: Column(
    //         children: productProvider.products
    //             .map(
    //               (child) => ListAnakCard(child),
    //             )
    //             .toList(),
    //       ),
    //     ),
    //   );
    // }
    //
    // return Scaffold(
    //   resizeToAvoidBottomInset: false,
    //   backgroundColor: Colors.white,
    //   body: Container(
    //     margin: EdgeInsets.only(left: 20, right: 20),
    //     child: ListView(
    //       children: [
    //         header(),
    //         //TitleGnder(),
    //         //Gender(),
    //         //TitleUmur(),
    //         //SlideUmur(),
    //         Search(),
    //         listAnaknya(),
    //         // isClick ? listAnaknya() : Container(),
    //       ],
    //     ),
    //   ),
    // );
  }
}
