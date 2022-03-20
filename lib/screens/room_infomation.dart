import 'package:flutter/material.dart';
import 'package:flutter_tv_test/screens/infomation_screen.dart';
import 'package:flutter_tv_test/screens/order_screen.dart';

import 'screens.dart';

class RoomInfomation extends StatefulWidget {
  const RoomInfomation({Key? key}) : super(key: key);

  static const String routeName = '/room-infomation';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const RoomInfomation(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<RoomInfomation> createState() => _RoomInfomationState();
}

class _RoomInfomationState extends State<RoomInfomation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Colors.black.withOpacity(0.7),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
            selectedLabelTextStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
            labelType: NavigationRailLabelType.selected,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                padding: EdgeInsets.only(top: 40),
                icon: Icon(Icons.food_bank_outlined),
                selectedIcon: Icon(Icons.food_bank_rounded),
                label: Text('Infomation'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(top: 40, bottom: 0),
                icon: Icon(Icons.local_drink_outlined),
                selectedIcon: Icon(Icons.local_drink_sharp),
                label: Text('My Order'),
              ),
            ],
          ),
          // const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            // child: Center(
            //   child: Text('selectedIndex: $_selectedIndex'),
            // ),
            child: buildPage(_selectedIndex),
          ),
        ],
      ),
    );
  }
}

Widget buildPage(int _selectedIndex) {
  switch (_selectedIndex) {
    case 0:
      return const InfomationScreen();
    case 1:
      return const OrderScreen();

    default:
      return const FoodScreen();
  }
}
