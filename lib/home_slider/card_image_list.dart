import 'package:flutter/material.dart';
import 'package:flutter_trips_app/home_slider/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage('assets/images/Lux_8.webp'),
          CardImage('assets/images/Lux_15.webp'),
          CardImage('assets/images/Lux_17.webp'),
          CardImage('assets/images/Lux_29.webp'),
          CardImage('assets/images/Lux_19.webp'),
          CardImage('assets/images/Lux_7.webp'),
          CardImage('assets/images/Lux_6.webp'),
        ],
      ),
    );
  }
}
