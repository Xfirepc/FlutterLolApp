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
            avatarImage: 'assets/images/me.png',
            name: 'Benito Camelas',
            description: '2 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
        Review(
            avatarImage: 'assets/images/me.png',
            name: 'Benito Camelas',
            description: '2 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
        Review(
            avatarImage: 'assets/images/me.png',
            name: 'Benito Camelas',
            description: '2 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
        Review(
            avatarImage: 'assets/images/me.png',
            name: 'Benito Camelas',
            description: '2 reviews 4 stars',
            comment: 'Esta bien perron el pasito',
            stars: 4),
      ],
    );
  }
}
