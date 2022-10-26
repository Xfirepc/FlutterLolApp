import 'package:flutter/material.dart';
import 'package:flutter_trips_app/common/rating.dart';

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
      child: const Text(
        '''Lorem ipsum dolor sit amet, consectetur \n adipiscing elit.''',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato", 
          fontSize: 13, 
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 215, 215, 215)
        ),
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
        style: const TextStyle(fontFamily: "Lato", fontSize: 17, color: Colors.amber),
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
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(avatarImage)),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
          ]),
    );

    return Row(children: [avatar, userDetail]);
  }
}
