import 'package:flutter/material.dart';
import 'package:flutter_tv_test/provider/appProvider.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

// class FoodModel {
//   int count;
//   String? id;
//   String? name;
//   String? image;

//   FoodModel(
//       {required this.count,
//       required this.id,
//       required this.name,
//       required this.image});
// }

class InfomationScreen extends StatefulWidget {
  const InfomationScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _InfomationScreen();
}

class _InfomationScreen extends State<InfomationScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white10,
          height: MediaQuery.of(context).size.height,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     colorFilter: new ColorFilter.mode(
          //         Colors.black.withOpacity(0.3), BlendMode.darken),
          //     image: NetworkImage(
          //       'https://firebasestorage.googleapis.com/v0/b/twe-mobile.appspot.com/o/Voucher%2F1.webp?alt=media&token=3dbbd680-c707-49a6-be68-7a78152207c6',
          //     ),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // height: MediaQuery.of(context).size.height,
          child: Consumer<AppProvider>(builder: (context, provider, child) {
            return ListView(
                padding: EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                          'https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2018/10/02/1412/Grand-Hyatt-Kuala-Lumpur-P279-Grand-Suite-Twin-Tower-View.jpg/Grand-Hyatt-Kuala-Lumpur-P279-Grand-Suite-Twin-Tower-View.16x9.jpg?imwidth=1280',
                          width: MediaQuery.of(context).size.width - 72,
                          height: 300,
                          fit: BoxFit.cover),
                      Container(
                        padding:
                            const EdgeInsets.only(bottom: 8, top: 8, left: 20),
                        child: const Text(
                          'Phòng 303  ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, bottom: 15),
                        child: Text(
                          'Phòng Junior Suite',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(bottom: 15, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.price_change_outlined,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '1.000.000 VND',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(Icons.nightlight_outlined,
                                  color: Colors.blue),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '2 night',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 20, bottom: 8),
                      child: Row(
                        children: [
                          Icon(Icons.account_circle_sharp, color: Colors.blue),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Nguyễn Hoàng Thái',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                ]);
          })),
    );
  }
}
