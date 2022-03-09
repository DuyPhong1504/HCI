import 'package:flutter/material.dart';

class ServiceTab extends StatelessWidget {
  final String tabName;
  final String imgUrl;
  const ServiceTab({
    Key? key,
    required this.tabName,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      onTap: () {
        Navigator.pushNamed(context, '/navrail');
      },
      focusColor: Colors.blueGrey,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 200,
        width: 300,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  colorBlendMode: BlendMode.modulate,
                  color: Colors.white.withOpacity(0.9),
                  image: NetworkImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  tabName,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
