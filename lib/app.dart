import 'package:flutter/material.dart';
import 'package:flutter_trips_app/home_slider/home.dart';
import 'package:flutter_trips_app/profile/profile.dart';

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
    const Home(),
    const Profile(),
    const Profile(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 31, 41),
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Container(
          margin: const EdgeInsets.only(left: 16, right: 16),
          padding: const EdgeInsets.only(top: 5),
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color.fromARGB(255, 96, 34, 10),
            backgroundColor: Colors.transparent,
            showUnselectedLabels: true,
            onTap: onTapTapped,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home), 
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_activity), 
                label: 'Activity'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person), 
                label: 'Profile'
              ),
            ],
          ),
        ),
    );
  }
}
