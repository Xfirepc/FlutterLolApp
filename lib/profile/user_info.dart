import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 2.0,
            top: 10
          ),
          child: const Text(
            'Jose Flores @XfirePc',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Lato',
            )
          )
        ),
        const Text(
          'vinygfx@gmail.com',
          style: TextStyle(
            fontSize: 15.0,
            color: Color.fromARGB(219, 255, 255, 255),
            fontFamily: 'Lato'
          )
        ),
      ],
    );

    final avatar = Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.only(top: 20, left: 30, right: 10, bottom: 10),
      decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/me.png')),
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            color: Colors.white,
            width: 2.0,
            style: BorderStyle.solid
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
          ]),
    );

    return Row(children: [avatar, userDetail]);
  }

}