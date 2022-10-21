import 'package:flutter/material.dart';

class FavButtonCard extends StatefulWidget {
  const FavButtonCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FavButtonCard();
  }
}

class _FavButtonCard extends State<FavButtonCard> {
  bool pressed = false;

  void onPressedFav() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 96, 34, 10),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        !pressed ? Icons.favorite_border : Icons.favorite
      ),
    );
  }
}
