import 'package:flutter/material.dart';

import 'screens.dart';

class NavRailScreen extends StatefulWidget {
  const NavRailScreen({Key? key}) : super(key: key);

  static const String routeName = '/navrail';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const NavRailScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<NavRailScreen> createState() => _NavRailScreenState();
}

class _NavRailScreenState extends State<NavRailScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.food_bank_outlined),
                selectedIcon: Icon(Icons.food_bank_rounded),
                label: Text('Food'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.local_drink_outlined),
                selectedIcon: Icon(Icons.local_drink_sharp),
                label: Text('Drinks'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.room_preferences_outlined),
                selectedIcon: Icon(Icons.room_preferences_rounded),
                label: Text('Room Service'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
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
      return FoodScreen();
    case 1:
      return DrinkScreen();
    case 2:
      return RoomServiceScreen();
    default:
      return FoodScreen();
  }
}
