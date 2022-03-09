import 'package:flutter/material.dart';

import '../models/film_model.dart';
import 'film_card.dart';

class FilmList extends StatelessWidget {
  List<Film> films;
  FilmList({
    Key? key,
    required this.films,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 320,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView.builder(
            itemCount: films.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return FilmCard(film: films[index]);
            },
          ),
        ),
      ),
    );
  }
}