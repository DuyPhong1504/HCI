import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case ServiceScreen.routeName:
        return ServiceScreen.route();
      case EventScreen.routeName:
        return EventScreen.route();
      case HotelScreen.routeName:
        return HotelScreen.route();
      case NavRailScreen.routeName:
        return NavRailScreen.route();
      case HealthScreen.routeName:
        return HealthScreen.route();
      case RoomScreen.routeName:
        return RoomScreen.route();
      case TvScreen.routeName:
        return TvScreen.route();
      case FilmDetail.routeName:
        return FilmDetail.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Error !"),
        ),
      ),
      settings: RouteSettings(name: '/error'),
    );
  }
}
