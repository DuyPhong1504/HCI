import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

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
                  'https://ieltscaptoc.com.vn/wp-content/uploads/2021/04/tu-vung-tieng-anh-do-an-nhanh.jpg'),
              SizedBox(width: 15),
              buildCard(
                  'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2022%2F02%2F11%2Fvalentines-food-deals-2.jpg&q=60'),
              SizedBox(width: 15),
              buildCard(
                  'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHZpZXRuYW1lc2UlMjBmb29kfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
              SizedBox(width: 15),
              buildCard(
                  'https://media-cdn.tripadvisor.com/media/photo-s/17/f5/39/f7/fooood-at-the-food-department.jpg'),
              SizedBox(width: 15),
              buildCard(
                  'https://i0.wp.com/post.healthline.com/wp-content/uploads/2022/02/salmon-on-plate-sunshine-1296x728-header.jpg?w=1155&h=1528'),
              SizedBox(width: 15),
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
