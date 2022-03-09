import 'package:flutter/material.dart';

import '../models/film_model.dart';
import '../widgets/widgets.dart';

class TvScreen extends StatelessWidget {
  static const String routeName = '/television';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const TvScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  const TvScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: Colors.black87,
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black87,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  TvCategoryText(title: 'Popular'),
                  TvCategoryText(title: 'Film'),
                  TvCategoryText(title: 'Cartoon'),
                  TvCategoryText(title: 'Live'),
                ],
              ),
              const SizedBox(
                width: 300,
                height: 350,
                child: TvCarouselSlider(),
              ),
              const SizedBox(height: 20),
              Text(
                'Popular',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.red),
              ),
              const Divider(
                indent: 400,
                endIndent: 400,
                color: Colors.red,
              ),
              FilmList(
                films: Film.films.where((film) => film.isPopular).toList(),
              ),
              Text(
                'Film',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.red),
              ),
              const Divider(
                indent: 400,
                endIndent: 400,
                color: Colors.red,
              ),
              FilmList(
                films: Film.films.where((film) => !film.isCartoon).toList(),
              ),
              Text(
                'Cartoon',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.red),
              ),
              const Divider(
                indent: 400,
                endIndent: 400,
                color: Colors.red,
              ),
              FilmList(
                films: Film.films.where((film) => film.isCartoon).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
