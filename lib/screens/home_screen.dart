import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1597655601841-214a4cfe8b2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW91bnRhaW4lMjBzY2VuZXJ5fGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const CustomAppBar(),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
            child: Column(
              children: [
                const Spacer(flex: 3),
                Flexible(
                  flex: 1,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HomeButton(
                        iconn: Icons.tv,
                        title: 'TV',
                        routeName: '/television',
                      ),
                      HomeButton(
                        iconn: Icons.room_service,
                        title: 'Services',
                        routeName: '/service',
                      ),
                      HomeButton(
                        iconn: Icons.event_available,
                        title: 'Events',
                        routeName: '/event',
                      ),
                      HomeButton(
                        iconn: Icons.room_outlined,
                        title: 'Room Information',
                        routeName: '/room',
                      ),
                      HomeButton(
                        iconn: Icons.hotel,
                        title: 'Hotel Information',
                        routeName: '/hotel',
                      ),
                      HomeButton(
                        iconn: Icons.health_and_safety,
                        title: 'Health Declaration',
                        routeName: '/health',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
