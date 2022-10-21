import 'package:flutter/material.dart';
import 'package:flutter_trips_app/home_slider/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const [
            DescriptionPlace(
              namePlace: "Lux",
              stars: 5,
              descriptionPlace: "Luxanna, o Lux, como prefiere que la llamen, creció en la ciudad demaciana de Meraplata Alta junto a su hermano mayor Garen. Los dos nacieron en el seno de la prestigiosa familia Crownguard, que durante generaciones ha servido como protectora del rey de Demacia. Su abuelo le salvó la vida al rey en la Batalla del Colmillo de la Tormenta y su tía Tianna fue designada comandante del regimiento de élite conocido como la Vanguardia Impertérrita antes de que Lux naciera."
            ),
            ReviewList()
          ],
        ),
        const HeaderAppBar()
      ],
    );
  }
}
