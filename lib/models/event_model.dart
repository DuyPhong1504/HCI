class EventModel {
  int id;
  String name;
  String img;
  String description;
  String address;

  EventModel(
      {required this.description,
      required this.id,
      required this.img,
      required this.address,
      required this.name});
}
