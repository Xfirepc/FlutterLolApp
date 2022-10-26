import 'package:flutter/material.dart';
import 'package:flutter_trips_app/home_slider/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Review(
            avatarImage: 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/f/f7/AzirSquare.png',
            name: 'Azir',
            description: '2 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
        Review(
            avatarImage: 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/4/4a/AsheSquare.png',
            name: 'Ashe',
            description: '3 reviews 2 stars',
            comment: 'Esta bien perron el pasito',
            stars: 3),
        Review(
            avatarImage: 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/e/e2/JinxSquare.png',
            name: 'Jinx',
            description: '1 reviews 5 stars',
            comment: 'Esta bien perron el pasito',
            stars: 5),
        Review(
            avatarImage: 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/0/0f/JaxSquare.png',
            name: 'Jax',
            description: '2 reviews 5 stars',
            comment: 'Esta bien perron el pasito',
            stars: 5),
        Review(
            avatarImage: 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/b/b2/Master_YiSquare.png',
            name: 'Maestro Yi',
            description: '2 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
        Review(
            avatarImage: 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/8/8b/RakanSquare.png',
            name: 'Rakan',
            description: '1 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
        Review(
            avatarImage: 'https://static.wikia.nocookie.net/lolesports_gamepedia_en/images/7/7c/RammusSquare.png',
            name: 'Rammus',
            description: '2 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
      ],
    );
  }
}
