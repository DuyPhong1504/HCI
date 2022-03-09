import 'package:equatable/equatable.dart';

class Film extends Equatable {
  final String title;
  final String imgUrl;
  final String content;
  final String genre;
  final int runTime;
  final bool isPopular;
  final bool isCartoon;

  Film({
    required this.title,
    required this.imgUrl,
    required this.content,
    required this.genre,
    required this.runTime,
    this.isPopular = false,
    this.isCartoon = false,
  });

  @override
  List<Object> get props {
    return [
      title,
      imgUrl,
      content,
      genre,
      runTime,
      isPopular,
      isCartoon,
    ];
  }

  static List<Film> films = [
    Film(
      title: "Lingui, The Sacred Bonds",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/4/922f4d5b83004a7ec238100547c505da-250h.jpg',
      content:
          "On the outskirts of the capital of Chad, determined single mother Amina works tirelessly to provide for herself and her 15-year old daughter Maria. When Amina discovers Maria is pregnant and does not want a child, the two women begin to seek out an abortion, condemned by both religion and law.",
      genre: 'Drama',
      runTime: 87,
    ),
    Film(
      title: "A Hero",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/3/df073c1d8cc0236fdc6c2d81ed0bc1dc-250h.jpg',
      content:
          "Rahim is in jail for a debt he hasn't been able to pay. During a two-day leave, he tries to convince his creditor to withdraw his complaint in exchange for paying back part of the debt. Rahim is then confronted with a crisis he would never have imagined",
      genre: 'Drama, Thriller',
      runTime: 123,
      isPopular: true,
    ),
    Film(
      title: "Nitram",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/1/a8a4efde139d640f8e848c4ebf4f0066-250h.jpg',
      content:
          "Nitram lives with his mother and father in suburban Australia in the Mid 1990s. He lives a life of isolation and frustration at never being able to fit in. That is until he unexpectedly finds a close friend in a reclusive heiress, Helen. However when that relationship meets a tragic end, and Nitram’s loneliness and anger grow, he begins a slow descent that leads to disaster.",
      genre: 'Drama, Thriller',
      runTime: 112,
      isPopular: true,
    ),
    Film(
      title: "The Fallout",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/8/c4abb05e4d86332ba6506ff3e4f060dd-250h.jpg',
      content:
          "Bolstered by new friendships forged under sudden and tragic circumstances, high schooler Vada (Jenna Ortega) begins to reinvent herself, while re-evaluating her relationships with her family, friends and her view of the world. Moving away from her comfortable family routine, she starts taking chances with a series of quicksilver decisions that test her own boundaries and push her in new directions. As she spends more time with Mia (Maddie Ziegler), they grow closer, and Vada slowly redefines herself through their shared experiences, leading her further away from that day and closer to living her life in the now.",
      genre: 'Drama',
      runTime: 92,
    ),
    Film(
      title: "Playground",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/2/0905544f135b898437cd43bf39b45341-250h.jpg',
      content:
          "Following 7-year-old Nora and her big brother Abel, we see Nora struggling to fit in before finding her place on the schoolyard. One day, she notices Abel being bullied by other kids, and though she rushes to protect him by warning their father, Abel forces her to remain silent, while he endures more humiliation and harassment by his peers.",
      genre: 'Drama',
      runTime: 72,
    ),
    Film(
      title: "Spider-Man: Into the Spider-Verse",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/9/bb71a51ba2cd06cac2662099a6411e19-250h.jpg',
      content:
          "Bitten by a radioactive spider in the subway, Brooklyn teenager Miles Morales suddenly develops mysterious powers that transform him into the one and only Spider-Man. When he meets Peter Parker, he soon realizes that there are many others who share his special, high-flying talents. Miles must now use his newfound skills to battle the evil Kingpin, a hulking madman who can open portals to other universes and pull different versions of Spider-Man into our world.",
      genre: 'Action, Comedy, Animation, Adventure',
      runTime: 117,
      isPopular: true,
      isCartoon: true,
    ),
    Film(
      title: "Inside Out",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/6/4ef454cab506fab08119c0efc252a981-250h.jpg',
      content:
          "Riley (Kaitlyn Dias) is a happy, hockey-loving 11-year-old Midwestern girl, but her world turns upside-down when she and her parents move to San Francisco. Riley's emotions -- led by Joy (Amy Poehler) -- try to guide her through this difficult, life-changing event. However, the stress of the move brings Sadness (Phyllis Smith) to the forefront. When Joy and Sadness are inadvertently swept into the far reaches of Riley's mind, the only emotions left in Headquarters are Anger, Fear and Disgust.",
      genre: 'Comedy, Animation, Fantasy',
      runTime: 95,
      isPopular: true,
      isCartoon: true,
    ),
    Film(
      title: "Coco",
      imgUrl:
          'https://static.metacritic.com/images/products/movies/4/868a9210a8e4d9da4a0008c661241250-250h.jpg',
      content:
          "Despite his family's generations-old ban on music, young Miguel dreams of becoming an accomplished musician like his idol Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead. After meeting a charming trickster named Héctor, the two new friends embark on an extraordinary journey to unlock the real story behind Miguel's family history.",
      genre: 'Music, Comedy, Adventure, Animation',
      runTime: 109,
      isPopular: true,
      isCartoon: true,
    ),
  ];
}
