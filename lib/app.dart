import 'package:flutter/material.dart';
import 'package:flutter_trips_app/home_trips.dart';
import 'package:flutter_trips_app/profile_trips.dart';
import 'package:flutter_trips_app/serch_trips.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() {
    return _App();
  }
}

class _App extends State<App> {
  int indexTab = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.yellow
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color.fromARGB(255, 53, 38, 185),
          onTap: onTapTapped, 
          currentIndex: indexTab,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]
        )
      ),
    );
  }
}
