import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/film_model.dart';
import 'hero_carousel.dart';

class TvCarouselSlider extends StatelessWidget {
  const TvCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: Film.films
            .map((film) => HeroCarousel(
                  film: film,
                ))
            .toList(),
      ),
    );
  }
}