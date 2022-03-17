class FoodModel {
  String id;
  int price;
  String foodName;
  String description;
  String image;
  int count;

  FoodModel(
      {required this.description,
      required this.id,
      required this.count,
      required this.foodName,
      required this.image,
      required this.price});
}
