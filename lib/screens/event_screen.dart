import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_tv_test/models/event_model.dart';

import '../widgets/widgets.dart';

List<EventModel> eventList = [
  EventModel(
      description:
          "Khu du lịch tọa lạc trên một vùng đất đồi hình chữ S, rộng 200.000m2, chính giữa có dòng suối với nhiều mạch nước ngầm uốn lượn chảy xuyên qua suốt chiều dài 2.000m. Đây là địa điểm thu hút khá lớn lượng khách vui chơi giải trí ",
      id: 0,
      address: " Gành Dầu, tp. Phú Quốc, tỉnh Kiên Giang.",
      img:
          "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/khu-du-lich-van-hoa-suoi-tien-203722.jpg?alt=media&token=a0cdd9f0-ea12-482e-bd4a-f03818e5c247",
      name: "Khu vui chơi dưới nước"),
  EventModel(
      description:
          "Khu vui chơi Thỏ Trắng là tổ hợp dành cho các lứa tuổi khác nhau. Nơi đây được thiết kế theo phong cách hiện đại, bắt mắt với nhiều trò chơi vui nhộn, từ những trò có cảm giác nhẹ đến cảm giác mạnh cho nhiều bạn rất nhiều trải nghiệm thú vị.",
      id: 1,
      address: "Bãi Dài, Gành Dầu, Gành Dầu, Phú Quốc",
      img:
          "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/6-khu-du-lich-sinh-thai-tuyet-voi-o-vung-tau-lam-say-dam-biet-bao-nguoi-202111291733266566.jpg?alt=media&token=53ad62cd-2ce5-4e13-b866-df4f012c09bd",
      name: "Khu vui chơi giải trí Vinpearl Safari Phú Quốc"),
  EventModel(
      description:
          "Đến với Koi RinRin Park bạn sẽ thấy được nét đặc sắc của những khu vườn nhật là những cây bom sai, những tảng đá có hình thù kì dị, cây cầu theo lối truyền thống nhật, hơn bạn sẽ được chiêm ngưỡng những chú cá Koi nhiều màu sắc. Đặc biệt bạn có thể mặc những chiếc Kimono của Nhật.",
      id: 2,
      address: "Hòn Thơm, Phú Quốc",
      img:
          "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/da_nang1.jpg?alt=media&token=6b578bf2-6263-4d35-a77e-d1285cf8271d",
      name: "Công Viên Đá Nhật Bản - Rin Rin Park"),
  EventModel(
      description:
          "Tại đây các bạn nhỏ sẽ được tìm hiểu về hàng nghìn loại cây lạ khắp hành tinh và đặc biệt chứng kiến tận mắt cách mà các loại nước thải và rác thải của hai nhà kính này được tái sử dụng để trở thành năng lượng quay tua bin hơi nước nhằm cung cấp điện cho khu vườn như thế nào.",
      id: 3,
      address: "",
      img:
          "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/thuy-cung-tri-nguyen-1_1628843175.jpg?alt=media&token=0bdeeaf1-2f23-4627-9f86-28b7a3816d07",
      name: "Thủy cung Garden by the Bay"),
];

class EventScreen extends StatelessWidget {
  static const String routeName = '/event';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => EventScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              "Sự kiện quanh đây",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          extendBodyBehindAppBar: true,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                     Colors.black.withOpacity(0.3), BlendMode.darken),
                image: NetworkImage(
                  'https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/party-crowd-silhouettes-dancing-nightclub_1048-11557.webp?alt=media&token=5ee3e85e-77dc-480e-82f1-20cf16dfe75f',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        initialPage: 2,
                        autoPlay: false,
                      ),
                      items: eventList
                          .map((event) => Container(
                              margin: EdgeInsets.all(5.0),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "/event-detail",
                                      arguments: event.id);
                                },
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(event.img,
                                          fit: BoxFit.cover, width: 1000.0),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          child: Text(
                                            event.name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
