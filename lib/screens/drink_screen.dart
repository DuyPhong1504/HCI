import 'package:flutter/material.dart';

class DrinkScreen extends StatelessWidget {
  const DrinkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Food"),
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
                  'https://www.troprockin.com/wp-content/uploads/2013/09/dirty-monkey-drink-recipe-cocktial.jpg'),
              SizedBox(width: 12),
              buildCard(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCSAa05KpZgvWg3eVWMTLFB3SQS19CW2tFFg&usqp=CAU'),
              SizedBox(width: 12),
              buildCard(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfroAWKq8LBbf04yX9SQz5WzFTFiAjNQ3znQ&usqp=CAU'),
              SizedBox(width: 12),
              buildCard(
                  'https://www.bakingbeauty.net/wp-content/uploads/2020/03/miami-vice-drink-3.jpg'),
              SizedBox(width: 12),
              buildCard(
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/drinks-to-avoid-1621959532.jpg?crop=1.00xw:0.752xh;0,0.142xh&resize=640:*'),
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
            '\$100',
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
