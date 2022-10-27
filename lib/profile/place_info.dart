import 'package:flutter/material.dart';
import 'package:flutter_trips_app/common/fav_button_card.dart';
import 'package:flutter_trips_app/profile/card_image_profile.dart';

class PlaceInfo extends StatelessWidget {
  final CardContent content;

  const PlaceInfo(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final place = Text(
      content.title,
      style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    );

    final placeInfo = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            content.description,
            textAlign: TextAlign.justify,
            style: const TextStyle(
                color: Color.fromARGB(102, 255, 255, 255),
                fontFamily: 'Lato',
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          ),
        ]));

    final steps = Text(
      '${content.steps} Habitantes',
      style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.amber),
    );

    final card = Container(
      width: screenWidth * 0.8,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color.fromARGB(255, 35, 44, 55),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[place, placeInfo, steps],
          )),
    );

    return Stack(
      alignment: const Alignment(0.8, 1.25),
      children: <Widget>[card, FavButtonCard()],
    );
  }
}
