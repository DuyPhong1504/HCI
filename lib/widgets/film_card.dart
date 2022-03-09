import 'package:flutter/material.dart';

import '../models/film_model.dart';

class FilmCard extends StatelessWidget {
  Film film;
  FilmCard({
    Key? key,
    required this.film,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.only(right: 70),
      child: Ink(
        // color: Colors.amber,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/filmDetail',
            );
          },
          borderRadius: BorderRadius.circular(10),
          focusColor: Colors.grey,
          splashColor: Colors.black,
          child: SizedBox(
            height: 350,
            width: 180,
            // decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: NetworkImage(film.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    film.title,
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
