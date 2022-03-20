import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HotelScreen extends StatelessWidget {
  static const String routeName = '/hotel';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HotelScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
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
              
            ),
            extendBodyBehindAppBar: true,
            body: Column(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/twe-mobile.appspot.com/o/Voucher%2FLADALAT-HOTEL-3-scaled-1.jpg?alt=media&token=000e888a-8245-42dd-864d-a7a3bf2ecc58',
                    width: 1920,
                    height: 350,
                    fit: BoxFit.cover),
                titleSection,
                textSection
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 0),
                child: const Text(
                  'Khách sạn Caravelle',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text(
                'Bãi biển Gành Gió, Thị trấn Dương Đông, Ông Lang, Đảo Phú Quốc, Việt Nam ',
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
              ),
            ],
          ),
        ),
        /*3*/

        Icon(
          Icons.star,
          color: Colors.amber,
          size: 30,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 30,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 30,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 30,
        ),
        Icon(
          Icons.star_border_outlined,
          color: Colors.amber,
          size: 30,
        ),
        const Text(
          '(4.0)',
          style: TextStyle(fontSize: 20),
        ),
      ],
    ),
  );
  Widget textSection = const Padding(
    padding: EdgeInsets.all(16),
    child: Text(
      'Đỗ xe và Wi-Fi luôn miễn phí, vì vậy quý khách có thể giữ liên lạc, đến và đi tùy ý. Nằm ở vị trí trung tâm tại Ông Lang của Đảo Phú Quốc, chỗ nghỉ này đặt quý khách ở gần các điểm thu hút và tùy chọn ăn uống thú vị. Đừng rời đi trước khi ghé thăm Sao Beach nổi tiếng. Được xếp hạng 5 sao, chỗ nghỉ chất lượng cao này cho phép khách nghỉ sử dụng mát-xa, bể bơi ngoài trời và xông khô ngay trong khuôn viên.',
      softWrap: true,
    ),
  );
}
