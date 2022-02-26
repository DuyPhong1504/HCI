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
        const Positioned.fill(
          child: Image(
            image: NetworkImage(
                'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
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
              "Available Services",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Row(
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
        ),
      ],
    );
  }
}
