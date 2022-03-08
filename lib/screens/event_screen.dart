import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/widgets.dart';

class EventScreen extends StatelessWidget {
  static const String routeName = '/event';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => EventScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  final List<String> imageList = [
    "https://bizweb.dktcdn.net/100/361/993/files/event.jpg?v=1570112116671",
    "https://jobsgo.vn/blog/wp-content/uploads/2021/08/events-la-gi-4.jpg",
    // "https://wifisukien.info/wp-content/uploads/2019/12/wifi-su-kien-ha-noi-2.jpg",
    "https://www.apple.com/v/apple-events/home/r/images/june-2021/meta/og__fodnljjkwl6y.jpg?202106280044",
    // "https://miceeventmanagementcompany.files.wordpress.com/2013/12/event-flooring-05.jpg",
  ];

  EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            "Event Around",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: false,
            ),
            items: imageList
                .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image.network(
                            e,
                            width: 1050,
                            height: 350,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
