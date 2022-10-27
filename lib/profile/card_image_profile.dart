import "package:flutter/material.dart";
import 'package:flutter_trips_app/profile/place_info.dart';

class CardContent {
  late String title;
  late String image;
  late String description;
  late int steps;

  CardContent(this.title, this.description, this.steps, this.image);

}

class CardImageProfile extends StatelessWidget {
  final CardContent content;
  const CardImageProfile(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    final cardImage = Container(
        margin: const EdgeInsets.only(top: 10.0, bottom: 70.0),
        height: 220.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(content.image)),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            shape: BoxShape.rectangle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
            ]));

    return Stack(
      alignment: Alignment(0.0, 0.8),
      children: [cardImage, PlaceInfo(content)],
    );
  }
}
