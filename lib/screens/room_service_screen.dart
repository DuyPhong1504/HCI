import 'package:flutter/material.dart';

class RoomServiceScreen extends StatelessWidget {
  const RoomServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://firebasestorage.googleapis.com/v0/b/twe-mobile.appspot.com/o/images%2F3NIEQB3SFVCMNHH6MHZ42FO6PA.webp?alt=media&token=10a0379a-7144-47f7-9289-2729846bc9b3',
            ),
            fit: BoxFit.cover,
          ),
        ),
        height: 1080,
        child: ListView(
            padding: EdgeInsets.only(
              top: 130,
              bottom: 130,
            ),
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 12),
              FlatButton(
                color: Colors.transparent,
                onPressed: () {},
                child: buildCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScLHufeM5cwF6heJ0WZcge-usFbtuMBtUwyw&usqp=CAU',
                    "Gọi lễ tân"),
              ),
              SizedBox(width: 12),
              FlatButton(
                color: Colors.transparent,
                onPressed: () {},
                child: buildCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhfDBcdLmQEnk5ooTCX6kRnRY1otall_MjgA&usqp=CAU',
                    "Giặt quần áo"),
              ),
              SizedBox(width: 12),
              FlatButton(
                color: Colors.transparent,
                onPressed: () {},
                child: buildCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_4Q6444ub_Huk2o42ns_xEBKok0KEGsPuEg&usqp=CAU',
                    "Dọn phòng"),
              ),
              SizedBox(width: 12),
              FlatButton(
                color: Colors.transparent,
                onPressed: () {},
                child: buildCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh8L0ykBhWkgUrfXPCpZKfg2XPfSsPWI4mCQ&usqp=CAU',
                    "Sửa chữa"),
              ),
              SizedBox(width: 12),
              SizedBox(width: 12),
            ]),
      ),
    );
  }

  Widget buildCard(String img, String food) => Container(
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
                  "x0",
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
