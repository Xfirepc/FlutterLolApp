import 'package:flutter/material.dart';
import 'package:flutter_trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(),
          CardImage(),
          CardImage(),
          CardImage(),
          CardImage(),
          CardImage(),
        ],
      ),
    );
  }
}
