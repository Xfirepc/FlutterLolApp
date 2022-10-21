import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;

  const Button(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
        height: 40,
        width: 150,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              bottomRight: Radius.circular(100),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            gradient: LinearGradient(
                colors: [Color(0xff4caf50), Color(0xffff9800)],
                begin: FractionalOffset(1.5, 1),
                end: FractionalOffset(0, 4),
                stops: [0, 1],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 15, fontFamily: 'Lato', color: Color.fromARGB(255, 20, 31, 41)),
          )
        ),
      ),
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Navegando")));
      },
    );
  }
}