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
                        "https://d1fd34dzzl09j.cloudfront.net/Images/CFACOM/Home%20Page%20Refresh/salad_desktop.jpg?h=425&w=535&la=en",
                  ),
                  ServiceTab(
                    tabName: "DRINKS",
                    imgUrl:
                        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20191031-mojitos-three-ways-delish-ehg-2887-1584029660.jpg?crop=0.540xw:0.810xh;0.232xw,0.0745xh&resize=640:*",
                  ),
                  ServiceTab(
                    tabName: "ROOM SERVICE",
                    imgUrl:
                        "https://media.istockphoto.com/photos/all-that-you-need-waitress-in-uniform-delivering-tray-with-food-in-a-picture-id1209739507?k=20&m=1209739507&s=612x612&w=0&h=m_QaMqWdH2LuJ_3rfesJWklC8f_b9wBOK58vhkMJwDQ=",
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
