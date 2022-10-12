import 'package:flutter/material.dart';
import 'package:flutter_trips_app/description_place.dart';

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
          body: const DescriptionPlace(
            namePlace: "Casita 1",
            stars: 4,
            descriptionPlace:
                "When mixing relative and absolute imports its possible to create confusion where the same member gets imported in two different ways. An easy way to avoid that is to ensure you have no relative imports that include lib/ in their paths.",
          )),
    );
  }
}
