import 'package:flutter/material.dart';

class TvCategoryText extends StatefulWidget {
  final String title;
  const TvCategoryText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<TvCategoryText> createState() => _TvCategoryTextState();
}

class _TvCategoryTextState extends State<TvCategoryText> {
  Color changeColor = Colors.grey;
  double fSize = 15;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      onFocusChange: (value) {
        if (value) {
          return setState(() {
            changeColor = Colors.red;
            fSize = 20;
          });
        } else {
          return setState(() {
            changeColor = Colors.grey;
            fSize = 15;
          });
        }
      },
      child: Text(
        widget.title,
        style: TextStyle(
          color: changeColor,
          fontSize: fSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}