import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double stars;
  final double marginLeft;
  final double fontSize;

  const Rating(
      {super.key,
      required this.stars,
      required this.marginLeft,
      required this.fontSize});

  Widget getStar(double star) {
    var icon = Icons.star;

    if (star == 0.5) {
      icon = Icons.star_half;
    } else if (star < 0.5) {
      icon = Icons.star_border;
    }
    return Container(
      margin: const EdgeInsets.only(right: 3.0),
      child: Icon(
        icon,
        color: const Color(0xFFf2C611),
        size: fontSize,
      ),
    );
  }

  Widget getRating(double stars) {
    var list = <Widget>[];

    for (var n = 0; n < 5; n++) {
      list.add(getStar(stars));
      stars--;
    }
    return Container(
      margin: EdgeInsets.only(left: marginLeft),
      child: Row(
        children: list,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return getRating(stars);
  }
}
