import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.chevron_left_sharp),
          title: const Text("Super reto!"),
        ),
        body: Stack(children: [
          const Image(
            image: AssetImage("assets/images/bg.png"),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
              height: 100,
              color: const Color.fromRGBO(0, 0, 0, 0.5),
              child: const Center(
                child: Text(
                  "Simon perro!",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
