import 'package:flutter/material.dart';
import 'package:flutter_trips_app/profile/buttons_list.dart';
import 'package:flutter_trips_app/profile/user_info.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget title = Container(
      alignment: const Alignment(-0.8, -0.6),
      child: const Text(
        'Profile',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return Column(
      children: [
        title,
        const UserInfo(),
        ButtonsList()
      ],
    );
  }
}
