import 'package:flutter/material.dart';
import 'package:flutter_trips_app/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const [
            DescriptionPlace(
              namePlace: "Casita 1",
              stars: 4,
              descriptionPlace:
                  "When mixing relative and absolute imports its possible to create confusion where the same member gets imported in two different ways. An easy way to avoid that is to ensure you have no relative imports that include lib/ in their paths.",
            ),
            ReviewList()
          ],
        ),
        const HeaderAppBar()
      ],
    );
  }
}
