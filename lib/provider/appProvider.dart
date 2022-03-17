import 'package:flutter/material.dart';
import 'package:flutter_tv_test/models/food_model.dart';
import 'package:flutter_tv_test/screens/food_screen.dart';

class AppProvider with ChangeNotifier {
  String foodId = "";
  String foodName = "";
  int price = 0;
  int quantity = 0;
  List<FoodModel> listFood = [
    FoodModel(
        count: 0,
        id: "1",
        price: 30,
        description: "Bánh mì Hamburger nhân thịt bò, salad, pho mai",
        foodName: "Hamburger",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/tu-vung-tieng-anh-do-an-nhanh.jpg?alt=media&token=43561e1b-643d-4f13-86a3-98bed79d247e"),
    FoodModel(
        count: 0,
        id: "2",
        price: 100,
        description: "Pizza hải sản cỡ to cho hai người ăn",
        foodName: "Pizza",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/image.webp?alt=media&token=892556e6-41c7-4826-bf1d-5b52ff7b6f16"),
    FoodModel(
        count: 0,
        id: "3",
        price: 100,
        description: "Beefsteak áp chảo với bơ tỏi và hương thảo ",
        foodName: "Beefsteak",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/photo-1504674900247-0877df9cc836.jpg?alt=media&token=0e396ac6-4c38-4747-a0c3-2e4bf780e221"),
  ];
  List<FoodModel> listDrink = [
    FoodModel(
        description: "",
        count: 0,
        id: "1",
        price: 35,
        foodName: "Singapore Sling",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/at_top-10-loai-do-uong-ngon-khong-cuong-noi-tai-singapore-phan-2_cd981c9dcd3beff015e5f162adcc2b03.jpg?alt=media&token=6f391fe9-e140-4b4a-a167-e5658f6895de"),
    FoodModel(
        count: 0,
        description: "",
        price: 40,
        id: "2",
        foodName: "Nước ép cà chua",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/tang-cuong-mien-dich-4-e1580788624825.jpg?alt=media&token=5b8ac3e1-bb74-43d5-bc23-5863083c2e42"),
    FoodModel(
        description: "",
        count: 0,
        id: "3",
        price: 45,
        foodName: "Cà phê Mexicano",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/ca-phe-mexicano-mexico-74467.jpg?alt=media&token=30c65a14-fa09-4e68-be71-384c6aeed713"),
    FoodModel(
        count: 0,
        id: "3",
        description: "",
        price: 40,
        foodName: "Nước ép táo",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/apple-cider-74458.jpg?alt=media&token=af95b0e9-72de-4213-b159-92ea71707319"),
  ];
  List<FoodModel> listService = [
    FoodModel(
        description: "",
        count: 0,
        id: "1",
        price: 100,
        foodName: "Dọn dẹp phòng",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/15-ky-nang-phuc-vu-khach-nhan-vien-buong-phong-can-biet-6.jpg?alt=media&token=2330cd12-75e1-4aec-ba69-601271c2aa10"),
    FoodModel(
        count: 0,
        description: "",
        price: 50,
        id: "2",
        foodName: "Giặt quần áo",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/quy-trinh-giat-kho.webp?alt=media&token=42d5cb11-194f-4aaa-98c0-4d1063584b42"),
    FoodModel(
        description: "",
        count: 0,
        id: "3",
        price: 50,
        foodName: "Sửa chữa",
        image:
            "https://firebasestorage.googleapis.com/v0/b/social-app-831ac.appspot.com/o/8c404dd1e53092454c6d9e5a411b223d.jpg?alt=media&token=6d682ee0-a1bd-43ea-98ff-aae45187015c"),
  ];

  void setListFood(FoodModel food) {
    for (var item in listFood) {
      if (item.id == food.id) {
        item.count = item.count + 1;
      }
    }
    notifyListeners();
  }

  void setListDrink(FoodModel food) {
    for (var item in listDrink) {
      if (item.id == food.id) {
        item.count = item.count + 1;
      }
    }
    notifyListeners();
  }

  void setListFoodEmpty() {
    for (var item in listFood) {
      item.count = 0;
    }
    notifyListeners();
  }

  void setListDrinkEmpty() {
    for (var item in listDrink) {
      item.count = 0;
    }
    notifyListeners();
  }

  List<FoodModel> get getListFood => listFood;
  List<FoodModel> get getListDrink => listDrink;
  List<FoodModel> get getListService => listService;
}
