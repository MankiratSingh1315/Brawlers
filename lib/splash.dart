import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('images/s.w..jpg'),
          ),
          Text(
            'Founder Moksh Sharma',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 65.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
