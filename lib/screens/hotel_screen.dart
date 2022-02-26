import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HotelScreen extends StatelessWidget {
  static const String routeName = '/hotel';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HotelScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MaterialApp(
          title: 'welcome',
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
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
                "Your Room infor",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Column(
              children: [
                Image.network(
                    'https://www.gannett-cdn.com/-mm-/c6ce345dd3cc67c30388965835e2347ef87cfcc7/c=0-366-2700-1885/local/-/media/2020/03/03/USATODAY/usatsports/MotleyFool-TMOT-b9d6657b-hotel-room.jpg?width=2700&height=1519&fit=crop&format=pjpg&auto=webp',
                    width: 1920,
                    height: 240,
                    fit: BoxFit.cover),
                titleSection,
                textSection
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
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
  Widget textSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );
}
