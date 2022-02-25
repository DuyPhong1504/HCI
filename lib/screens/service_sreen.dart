import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("DMM"),
      ),
    );
  }
}
