import 'package:flutter/material.dart';

class Mycontrol extends StatefulWidget {
  const Mycontrol({super.key});

  @override
  State<Mycontrol> createState() => _MycontrolState();
}

class _MycontrolState extends State<Mycontrol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Your Appliances :'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 35, top: 130),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: ListTile(title: Text("WATER TANK", style: TextStyle()))),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mycontrol()),
                );
              },
              child: Card(
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: ListTile(
                    // leading: Icon(
                    //   Icons.email,
                    //   color: Colors.white,
                    // ),
                    title:
                        Text("SWITCH ON/OFF APPLIANCES", style: TextStyle())),
              ),
            ),
            //Card(
            //  color: Colors.yellow,
            //  margin: EdgeInsets.symmetric(
            //    vertical: 5.0,
            //    horizontal: 10.0,
            //  ),
            //  child: ListTile(
            //      title: Text("NOTICE FROM MUNICIPALITY", style: TextStyle())),
            //),
          ],
        ),
      ),
    );
  }
}
