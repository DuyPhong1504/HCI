import 'package:flutter/material.dart';

class RoomServiceScreen extends StatelessWidget {
  const RoomServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Service Room"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://www.popsci.com/uploads/2020/06/05/3NIEQB3SFVCMNHH6MHZ42FO6PA.jpg?auto=webp',
            ),
            fit: BoxFit.cover,
          ),
        ),
        height: 1080,
        child: ListView(
            padding: EdgeInsets.only(top: 100),
            scrollDirection: Axis.horizontal,
            children: [
              buildCard(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScLHufeM5cwF6heJ0WZcge-usFbtuMBtUwyw&usqp=CAU'),
              SizedBox(width: 12),
              buildCard(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhfDBcdLmQEnk5ooTCX6kRnRY1otall_MjgA&usqp=CAU'),
              SizedBox(width: 12),
              buildCard(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_4Q6444ub_Huk2o42ns_xEBKok0KEGsPuEg&usqp=CAU'),
              SizedBox(width: 12),
              buildCard(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh8L0ykBhWkgUrfXPCpZKfg2XPfSsPWI4mCQ&usqp=CAU'),
              SizedBox(width: 12),
              buildCard(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuxwz12rYvPmVC2Vl25EfarP09tgprtnQmMw&usqp=CAU'),
              SizedBox(width: 12),
            ]),
      ),
    );
  }

  Widget buildCard(String img) => Container(
      width: 400,
      height: 400,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.network(
              img,
              fit: BoxFit.cover,
              height: 250,
              width: 400,
            ),
          ),
          Text(
            'Something \n\$100',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ],
      ));
}
