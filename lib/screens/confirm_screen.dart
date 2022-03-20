import 'package:flutter/material.dart';
import 'package:flutter_tv_test/models/food_model.dart';
import 'package:flutter_tv_test/provider/appProvider.dart';
import 'package:provider/provider.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key}) : super(key: key);
  static const String routeName = '/confirm';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ConfirmScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    int total = 0;
    context.read<AppProvider>().getListFood.map(
      (food) {
        if (food.count > 0) {
          total = total + food.price;
        }
      },
    ).toList();
    context.read<AppProvider>().getListDrink.map(
      (drink) {
        if (drink.count > 0) {
          total = total + drink.price;
        }
      },
    ).toList();
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
              child: Icon(
            Icons.arrow_back,
            size: 32,
            color: Colors.black,
          )),
        )),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
          child: Row(children: [
            Consumer<AppProvider>(builder: (context, provider, child) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: EdgeInsets.only(top: 60, left: 20, bottom: 10),
                padding: EdgeInsets.only(left: 10, top: 10),
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .6,
                child: ListView(
                  children: [
                    Container(
                        child: Row(children: [
                      Icon(Icons.fastfood_rounded,
                          size: 28, color: Colors.white),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Xác nhân đặt dịch vụ",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ])),
                    if (provider.getListFood.isNotEmpty)
                      ...provider.getListFood.map((food) {
                        if (food.count > 0) {
                          return buildFoodItem(food);
                        } else {
                          return Container();
                        }
                      }).toList(),
                    if (provider.getListDrink.isNotEmpty)
                      ...provider.getListDrink.map((food) {
                        if (food.count > 0) {
                          return buildFoodItem(food);
                        } else {
                          return Container();
                        }
                      }).toList()
                  ],
                ),
              );
            }),
            Container(
              margin: EdgeInsets.only(top: 60, left: 10, bottom: 10, right: 10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * .4 - 40,
              child: Column(children: [
                Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.meeting_room,
                                  size: 28, color: Colors.white),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Thông tin thanh toán",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )
                            ]),
                        Container(
                          margin: EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          height: 180,
                          // color: Colors.amber,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Tên khách hàng: ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Phòng:",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Ngày:",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Tổng cộng:",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Nguyen Van A",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "301",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "22/3/2022",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        total.toString() + ".000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        )
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 24),
                          height: 50,
                          width: 150,
                          child: FlatButton(
                            color: Colors.black45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side:
                                    BorderSide(width: 1, color: Colors.white)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Hủy bỏ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          child: FlatButton(
                            color: Colors.black45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side:
                                    BorderSide(width: 1, color: Colors.white)),
                            onPressed: () {
                              // Navigator.pushNamed(context, "/confirm");
                              // context.read<AppProvider>().setListOrder(list);
                              List<FoodModel> listOrder = [];
                              int total = 0;
                              context.read<AppProvider>().getListFood.map(
                                (food) {
                                  if (food.count > 0) {
                                    listOrder.add(food);
                                    total = total + food.price;
                                  }
                                },
                              ).toList();
                              context.read<AppProvider>().getListDrink.map(
                                (drink) {
                                  if (drink.count > 0) {
                                    listOrder.add(drink);
                                    total = total + drink.price;
                                  }
                                },
                              ).toList();

                              context.read<AppProvider>().setListOrderHistory(
                                  listOrder, "Chờ xác nhận", total);
                              context.read<AppProvider>().setListFoodEmpty();
                              context.read<AppProvider>().setListDrinkEmpty();
                              Navigator.pushNamed(context, "/room-infomation");
                            },
                            child: Text(
                              "Xác nhân",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ]),
                )
              ]),
            )
          ]),
        )
      ],
    ));
  }

  Widget buildFoodItem(FoodModel food) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 20,
      ),
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
            Container(
                margin: EdgeInsets.only(left: 25),
                height: 100,
                width: 45,
                // color: Colors.amber,
                child: TextButton(
                    onPressed: () {},
                    child: Icon(Icons.delete, color: Colors.white)))
          ]),
    );
  }
}
