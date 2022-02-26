import 'package:flutter/material.dart';

class RoomServiceScreen extends StatelessWidget {
  const RoomServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Room Services"),
      ),
    );
  }
}
