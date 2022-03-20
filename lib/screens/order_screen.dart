import 'package:flutter/material.dart';
import 'package:flutter_tv_test/models/food_model.dart';
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

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _OrderScreen();
}

class _OrderScreen extends State<OrderScreen> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // context.read<AppProvider>()
    //   ..setListOrderHistory(listOrder, "Chờ xác nhận", 200000);
    // context.read<AppProvider>()
    //   ..setListOrderHistory(listOrder, "Chờ xác nhận", 300000);
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
                'https://firebasestorage.googleapis.com/v0/b/twe-mobile.appspot.com/o/Voucher%2F1.webp?alt=media&token=3dbbd680-c707-49a6-be68-7a78152207c6',
              ),
              fit: BoxFit.cover,
            ),
          ),
          // height: MediaQuery.of(context).size.height,
          child: Consumer<AppProvider>(builder: (context, provider, child) {
            // print(provider.getListOrder.length);
            // print(provider.getListOrderHistory.length);
            return Stack(
              children: [
                ListView(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 20, right: 20, left: 20),
                    scrollDirection: Axis.vertical,
                    children: [
                      if (provider.getListOrderHistory.isNotEmpty)
                        ...provider.getListOrderHistory.map((foodList) {
                          return Container(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Column(children: [
                              if (foodList.listOrder.isNotEmpty)
                                ...foodList.listOrder.map((foodList) {
                                  return buildFoodItem(foodList);
                                }).toList(),
                              Container(
                                  padding:
                                      EdgeInsets.only(bottom: 20, left: 20),
                                  margin: EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1, color: Colors.black26)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Trạng thái:  ${foodList.status}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "Tổng cộng:  ${foodList.total}.000 VND",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Container(
                                        width: 150,
                                        height: 45,
                                        child: FlatButton(
                                          color: Colors.black45,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white)),
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                // return object of type Dialog
                                                return AlertDialog(
                                                  title: new Text(
                                                      "Hủy đặt dịch vụ"),
                                                  content: new Text(
                                                      "Bạn có chắc chắn muốn hủy đặt dịch vụ"),
                                                  actions: <Widget>[
                                                    // usually buttons at the bottom of the dialog
                                                    new FlatButton(
                                                      child: new Text("Đồng ý"),
                                                      onPressed: () {},
                                                    ),
                                                    new FlatButton(
                                                      child: new Text("Trở lại"),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    )
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Text(
                                            "Hủy Đặt",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                            ]),
                          );
                        }).toList()
                    ]),
              ],
            );
          })),
    );
  }

  Widget buildFoodItem(FoodModel food) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, left: 20),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black26)),
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 80,
              width: 80,
              // color: Colors.amber,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                  food.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(right: 38),
              height: 100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        food.foodName,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    if (food.description == "") ...[
                      Container(
                        width: 250,
                      )
                    ] else ...[
                      Container(
                        width: 250,
                        child: Text(
                          food.description,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      )
                    ]
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(right: 38),
              child: Text(
                food.count.toString(),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Text(food.price.toString() + ".000",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
          ]),
    );
  }
}
