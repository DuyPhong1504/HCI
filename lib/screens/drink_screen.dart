import 'package:flutter/material.dart';
import 'package:flutter_tv_test/provider/appProvider.dart';
import 'package:provider/provider.dart';

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({Key? key}) : super(key: key);

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
          height: 1080,
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
                      if (provider.getListDrink.length > 0)
                        ...provider.getListDrink
                            .map(
                              (e) => FlatButton(
                                color: Colors.transparent,
                                onPressed: () {
                                  provider.setListDrink(e);
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
                          provider.setListDrinkEmpty();
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
                  "x${count.toString()}",
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
