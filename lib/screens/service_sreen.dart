import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ServiceScreen extends StatelessWidget {
  static const String routeName = '/service';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ServiceScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ServiceTab(
                    tabName: "FOOD",
                    imgUrl:
                        "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/salad_desktop.jpg?alt=media&token=bdf4d065-ba70-46a5-8feb-a9439cbdc719",
                  ),
                  ServiceTab(
                    tabName: "DRINKS",
                    imgUrl:
                        "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/97046d1d75c0939ecad16.webp?alt=media&token=0ee9659b-f35b-4c47-a2ee-a9f8f2ac0648",
                  ),
                  ServiceTab(
                    tabName: "ROOM SERVICE",
                    imgUrl:
                        "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/istockphoto-1209739507-612x612.jpg?alt=media&token=931e0164-86af-485f-a16a-0d80f20e1184",
                  ),
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstATop),
                  image: NetworkImage(
                    'https://ak.picdn.net/shutterstock/videos/5332472/thumb/1.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            )),
      ],
    );
  }
}
