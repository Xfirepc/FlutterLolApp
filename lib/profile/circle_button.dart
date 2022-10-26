import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  double iconSize;
  var icon;
  var color;
  bool mini;

  CircleButton(this.mini, this.icon, this.iconSize, this.color);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton> {
  void onPressedBtn() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        onPressed: onPressedBtn,
        mini: widget.mini,
        backgroundColor: widget.color,
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: Color.fromARGB(255, 86, 86, 86),
        ),
      ),
    );
  }
}
