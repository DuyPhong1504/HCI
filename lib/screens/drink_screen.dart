import 'package:flutter/material.dart';

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.dstATop),
              image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/twe-mobile.appspot.com/o/images%2F3NIEQB3SFVCMNHH6MHZ42FO6PA.webp?alt=media&token=10a0379a-7144-47f7-9289-2729846bc9b3',
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: 1080,
          child: Stack(
            children: [
              ListView(
                  padding: EdgeInsets.only(
                    top: 130,
                    bottom: 130,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 15),
                    FlatButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: buildCard(
                          'https://www.troprockin.com/wp-content/uploads/2013/09/dirty-monkey-drink-recipe-cocktial.jpg',
                          "Drink 1"),
                    ),
                    SizedBox(width: 12),
                    FlatButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: buildCard(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCSAa05KpZgvWg3eVWMTLFB3SQS19CW2tFFg&usqp=CAU',
                          "Drink 2"),
                    ),
                    SizedBox(width: 12),
                    FlatButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: buildCard(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfroAWKq8LBbf04yX9SQz5WzFTFiAjNQ3znQ&usqp=CAU',
                          "Drink 3"),
                    ),
                    SizedBox(width: 12),
                    FlatButton(
                      color: Colors.transparent,
                      onPressed: () {},
                      child: buildCard(
                          'https://www.bakingbeauty.net/wp-content/uploads/2020/03/miami-vice-drink-3.jpg',
                          "Drink 4"),
                    ),
                    SizedBox(width: 12),
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
                      onPressed: () {},
                      child: Text(
                        "Tiếp theo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
            ],
          )),
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
