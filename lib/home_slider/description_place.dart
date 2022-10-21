import 'package:flutter/material.dart';
import 'package:flutter_trips_app/common/button.dart';
import 'package:flutter_trips_app/home_slider/review_list.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  const DescriptionPlace(
      {super.key,
      required this.namePlace,
      required this.stars,
      required this.descriptionPlace});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
                fontSize: 30.0,
                color: Color(0xFFf2C611),
                fontWeight: FontWeight.w900,
                fontFamily: "Lato"),
            textAlign: TextAlign.justify,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 222, 222, 222)
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [titleStars, description, const Button('Leer más'), const ReviewList()],
    );
  }
}
