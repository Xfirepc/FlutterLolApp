import 'package:flutter/material.dart';
import 'package:flutter_trips_app/profile/card_list.dart';
import 'package:flutter_trips_app/profile/gradient_back.dart';
import 'package:flutter_trips_app/profile/profile_header.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const ProfileGradientBack(),
        ListView(
          children: <Widget>[
            const ProfileHeader(),
            CardList()
          ],
        ),
      ],
    );
  }

}