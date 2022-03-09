import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.nightlight_round_outlined,
                color: Colors.amberAccent),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '23°C',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'Good Evening',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(
              Icons.signal_wifi_4_bar,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              '19:26',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ],
    );
  }
}
