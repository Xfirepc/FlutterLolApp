import 'package:flutter/material.dart';
import 'package:flutter_trips_app/profile/card_image_profile.dart';

class CardList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<CardContent> contents = [
      CardContent('Shurima', 'El imperio de Shurima fue una próspera civilización que recubría todo un continente. Los poderosos dioses guerreros', 23412, 'assets/images/places/shurima.jpeg'),
      CardContent('Demacia', 'Demacia es un reino poderoso y honesto con una prestigiosa historia militar, y su gente siempre ha valorado profundamente los ideales de justicia', 32423, 'assets/images/places/demacia.jpeg'),
      CardContent('Piltover', 'Piltover es una ciudad progresista, con un poder e influencia en auge. Es el centro cultural de Valoran y el arte, la artesanía, el comercio y la innovación', 441244, 'assets/images/places/piltover.webp'),
      CardContent('Noxus', 'Noxus es un poderoso imperio con una reputación aterradora. Para quienes no se encuentran en el interior de sus fronteras, Noxus es una civilización amenazante', 363673, 'assets/images/places/noxus.webp'),
      CardContent('Jonia', 'Rodeada por traicioneros mares, está formada por una serie de provincias aliadas desperdigadas a lo largo y ancho de un inmenso archipiélago', 2351, 'assets/images/places/jonia.webp'),
      CardContent('Freljord', 'Freljord es un lugar duro e implacable en el que la gente nace lista para luchar por la supervivencia contra todo pronóstico.', 3326, 'assets/images/places/freijord.webp'),
    ];

    return Container(
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          CardImageProfile(contents[0]),
          CardImageProfile(contents[1]),
          CardImageProfile(contents[2]),
          CardImageProfile(contents[3]),
          CardImageProfile(contents[4]),
          CardImageProfile(contents[5]),
        ],
      ),
    );
  }

}