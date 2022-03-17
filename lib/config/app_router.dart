import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tv_test/screens/confirm_screen.dart';
import 'package:flutter_tv_test/screens/event_detail_screen.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');
    Object? arg = settings.arguments;

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
      case ConfirmScreen.routeName:
        return ConfirmScreen.route();
      case EventDetailScreen.routeName:
        return EventDetailScreen.route(id: int.parse(arg.toString()));

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
