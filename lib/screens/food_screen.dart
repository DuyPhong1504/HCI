import 'package:flutter/material.dart';
import 'package:flutter_tv_test/provider/appProvider.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

// class FoodModel {
//   int count;
//   String? id;
//   String? name;
//   String? image;

//   FoodModel(
//       {required this.count,
//       required this.id,
//       required this.name,
//       required this.image});
// }

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _FoodScreen();
}

class _FoodScreen extends State<FoodScreen> {
  int count = 0;
  // List<FoodModel> list = [
  //   FoodModel(
  //       count: 0,
  //       id: "1",
  //       name: "Hamburger",
  //       image:
  //           "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/tu-vung-tieng-anh-do-an-nhanh.jpg?alt=media&token=43561e1b-643d-4f13-86a3-98bed79d247e"),
  //   FoodModel(
  //       count: 0,
  //       id: "2",
  //       name: "Pizza",
  //       image:
  //           "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/image.webp?alt=media&token=892556e6-41c7-4826-bf1d-5b52ff7b6f16"),
  //   FoodModel(
  //       count: 0,
  //       id: "3",
  //       name: "Beefsteak",
  //       image:
  //           "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/photo-1504674900247-0877df9cc836.jpg?alt=media&token=0e396ac6-4c38-4747-a0c3-2e4bf780e221"),
  // ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
              image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/twe-mobile.appspot.com/o/images%2F3NIEQB3SFVCMNHH6MHZ42FO6PA.webp?alt=media&token=10a0379a-7144-47f7-9289-2729846bc9b3',
              ),
              fit: BoxFit.cover,
            ),
          ),
          // height: MediaQuery.of(context).size.height,
          child: Consumer<AppProvider>(builder: (context, provider, child) {
            return Stack(
              children: [
                ListView(
                    padding: EdgeInsets.only(
                      top: 130,
                      bottom: 130,
                    ),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 15),
                      if (provider.getListFood.length > 0)
                        ...provider.getListFood
                            .map(
                              (e) => FlatButton(
                                color: Colors.transparent,
                                onPressed: () {
                                  provider.setListFood(e);
                                },
                                child: buildCard(e.image, e.foodName, e.count),
                              ),
                            )
                            .toList()
                    ]),
                Positioned(
                    bottom: 30,
                    right: 30,
                    child: Container(
                      height: 50,
                      width: 150,
                      child: FlatButton(
                        color: Colors.black45,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(width: 1, color: Colors.white)),
                        onPressed: () {
                          Navigator.pushNamed(context, "/confirm");
                        },
                        child: Text(
                          "Tiếp theo",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                Positioned(
                    bottom: 30,
                    right: 210,
                    child: Container(
                      height: 50,
                      width: 150,
                      child: FlatButton(
                        color: Colors.black45,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(width: 1, color: Colors.white)),
                        onPressed: () {
                          provider.setListFoodEmpty();
                        },
                        child: Text(
                          "Thiết lập lại",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ))
              ],
            );
          })),
    );
  }

  Widget buildCard(String img, String food, int count) => Container(
          // width: 400,
          // height: 400,
          child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              img,
              fit: BoxFit.cover,
              height: 250,
              width: 400,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                width: 400,
                height: 50,
                child: Text(
                  '\$100',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Positioned(
              bottom: 5,
              left: 20,
              child: Container(
                alignment: Alignment.centerLeft,
                width: 400,
                height: 40,
                child: Text(
                  food,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Positioned(
              top: 0,
              right: 15,
              child: Container(
                alignment: Alignment.centerRight,
                width: 400,
                height: 40,
                child: Text(
                  "x${count}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ))
          // FloatingActionButton(
          //   backgroundColor: Colors.green,
          //   onPressed: () {},
          //   child: Icon(Icons.add),
          // ),
        ],
      ));
}
