import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HealthScreen extends StatelessWidget {
  static const String routeName = '/health';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HealthScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MaterialApp(
          title: 'welcome',
          home: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              // leading: IconButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   icon: const Icon(
              //     Icons.arrow_back,
              //     color: Colors.black,
              //   ),
              // ),
              title: const Text(
                "Health declaration",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Column(
              children: [
                Image.network(
                    'https://baokhanhhoa.vn/dataimages/202102/original/images5442189_blue.jpg',
                    width: 1920,
                    height: 350,
                    fit: BoxFit.fill),
                titleSection,
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Text(
                'Quét mã QR code để khai báo y tế',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.account_tree,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
}
