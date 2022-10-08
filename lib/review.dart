import 'package:flutter/material.dart';
import 'package:flutter_trips_app/rating.dart';

class Review extends StatelessWidget {
  final String avatarImage;
  final String name;
  final String description;
  final String comment;
  final double stars;

  const Review(
      {super.key,
      required this.avatarImage,
      required this.name,
      required this.description,
      required this.comment,
      required this.stars});

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13, fontWeight: FontWeight.w700),
      ),
    );

    final userInfo = Row(children: [
      Container(
        margin: const EdgeInsets.only(left: 20),
        child: Text(
          description,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontFamily: "Lato", fontSize: 13, color: Color(0xFFA3A5A7)),
        ),
      ),
      Rating(stars: stars, marginLeft: 5, fontSize: 14)
    ]);

    final userName = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "Lato", fontSize: 17),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );

    final avatar = Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.only(top: 20, left: 20),
      child: CircleAvatar(
        backgroundImage: AssetImage(avatarImage),
      ),
    );

    return Row(children: [avatar, userDetail]);
  }
}
