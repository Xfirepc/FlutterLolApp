import 'package:flutter/material.dart';
import 'package:flutter_trips_app/fav_button_card.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(top: 80, left: 20),
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/places/beach.jpeg')
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
          ]
        ),
    );
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        card,
        FavButtonCard()
      ],
    );
  }
}
