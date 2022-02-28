import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class RoomScreen extends StatelessWidget {
  static const String routeName = '/room';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => RoomScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  RoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: Image(
            image: NetworkImage(
                'https://img2.goodfon.com/wallpaper/nbig/9/ce/background-water-voda-fon.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: const Text(
              "Room information",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            children: [
              Image.network(
                  'https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2018/10/02/1412/Grand-Hyatt-Kuala-Lumpur-P279-Grand-Suite-Twin-Tower-View.jpg/Grand-Hyatt-Kuala-Lumpur-P279-Grand-Suite-Twin-Tower-View.16x9.jpg?imwidth=1280',
                  width: 1920,
                  height: 240,
                  fit: BoxFit.cover),
              titleSection,
              priceSection,
            ],
          ),
        ),
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
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Grand Hyatt  ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text(
                'Kuala Lumpur - 22 Nov,2022',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.cloud,
          color: Colors.blue,
          size: 40,
        ),
      ],
    ),
  );

  Widget priceSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Price : 400\$',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Text(
          '4 night',
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 30,
          ),
        ),
        Icon(
          Icons.shield_moon_outlined,
          color: Colors.blue,
          size: 40,
        ),
      ],
    ),
  );
}
