import 'package:flutter/material.dart';
import 'package:flutter_tv_test/screens/event_screen.dart';

class EventDetailScreen extends StatefulWidget {
  int? id;
  static const String routeName = '/event-detail';

  static Route route({required int id}) {
    return MaterialPageRoute(
      builder: (_) => EventDetailScreen(
        id: id,
      ),
      settings: const RouteSettings(name: routeName),
    );
  }

  EventDetailScreen({required this.id, Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _EventDetailScreen();
}

class _EventDetailScreen extends State<EventDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              color: Colors.white,
            ),
          ),
          title: const Text(
            "Thông tin Sự kiện",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.darken),
                image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/FeH3Gr4e7OoYxti7xSvVX-qt5PP_4kXjz4ZLVNV7-54.webp?alt=media&token=23be562b-ade8-43c6-a371-67571d410bc3',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 100, bottom: 100),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                eventList[widget.id!].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, bottom: 20),
                              width: 450,
                              child: Text(
                                eventList[widget.id!].description,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0, bottom: 10),
                              width: 450,
                              child: Text(
                                "Địa chỉ: ${eventList[widget.id!].address}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0, bottom: 10),
                              width: 450,
                              child: Text(
                                "Hotline: 083 853 7867",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0, bottom: 10),
                              width: 450,
                              child: Text(
                                "Thời gian mở cửa: 8h - 18h",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                        child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: Image.network(
                        eventList[widget.id!].img,
                        fit: BoxFit.cover,
                        width: 350.0,
                        height: 340,
                      ),
                    ))
                  ]),
            )));
  }
}
