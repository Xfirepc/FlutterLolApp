import 'package:flutter/material.dart';

class ProfileGradientBack extends StatelessWidget {
  const ProfileGradientBack({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen= MediaQuery.of(context).size.width;
    return Container(
      clipBehavior: Clip.hardEdge,
      width: widthScreen,
      height: heightScreen * .5,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfff44336),
              Color(0xffffeb3b)
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )
      ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: const Alignment(-1.1, -1),
        child: Container(
          width: heightScreen * 2,
          height: heightScreen,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.08),
              borderRadius: BorderRadius.circular(heightScreen)
          ),
        ),
      ),
    );
  }

}

