import 'package:flutter_tv_test/models/food_model.dart';

class OrderModel {
  List<FoodModel> listOrder;
  String status;
  int total;
  OrderModel(
      {required this.listOrder, required this.status, required this.total});
}
