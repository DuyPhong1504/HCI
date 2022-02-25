import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final IconData iconn;
  final String title;
  final String routeName;
  const HomeButton({
    Key? key,
    required this.iconn,
    required this.title,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
      child: Ink(
        width: 125,
        // height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.white12,
            ],
          ),
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(15),
        ), // LinearGradientBoxDecoration
        child: InkWell(
          focusColor: Colors.blueGrey,
          // onFocusChange: (){},
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
          borderRadius: BorderRadius.circular(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconn,
                  color: Colors.white,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          splashColor: Colors.grey,
        ),
      ),
    );
  }
}
