import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;

  const GradientBack(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff4caf50), Color(0xffff9800)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        )
      
      
      ),
      alignment: const Alignment(-0.8, -0.6),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
