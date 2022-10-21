import 'package:flutter/material.dart';
import 'package:flutter_trips_app/home_slider/card_image_list.dart';
import 'package:flutter_trips_app/home_slider/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack('La dama luminosa'),
        CardImageList()
      ],
    );
  }
}
