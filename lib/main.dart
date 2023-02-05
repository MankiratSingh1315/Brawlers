import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackathonn/society.dart';
import 'package:hackathonn/household.dart';
import 'package:hackathonn/login.dart';
import 'package:hackathonn/splash.dart';

//import 'package:hello_world/login.dart';
//import 'package:hello_world/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLogin(),
      debugShowCheckedModeBanner: false,
      routes: {
        'splash': (context) => Splash(),
        'login': (context) => MyLogin(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 100.0,
          backgroundImage: AssetImage('images/icon.jpg'),
        ),
        Text('BRAWLERS',
            style: TextStyle(
              fontFamily: 'lora',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              color: Colors.white,
            ))
      ]),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //decoration: BoxDecoration(
        //    image: DecorationImage(
        //  image: AssetImage('images/background.jpg'),
        //)),
        padding: EdgeInsets.only(top: 130),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CONTACT US :',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'lora',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/icon.jpg'),
              ),
              Text('WELCOME TO UNTITLED APP',
                  style: TextStyle(
                    fontFamily: 'lora',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    color: Colors.black,
                  )),
              Text('By BRAWLERS',
                  style: TextStyle(
                    fontFamily: 'lora',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    color: Colors.white,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myhousehold()),
                  );
                },
                child: Card(
                    color: Colors.yellow,
                    margin: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    child: ListTile(
                        //    leading: Icon(
                        //      color: Colors.white,
                        //    ),
                        title: Text("HOUSEHOLD", style: TextStyle()))),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mysociety()),
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
                    title: Text("SOCIETY", style: TextStyle()),
                  ),
                ),
                //Card(
                //  color: Colors.yellow,
                //  margin: EdgeInsets.symmetric(
                //    vertical: 5.0,
                //    horizontal: 20.0,
                //  ),
                //  child: ListTile(
                //      leading: Icon(
                //        Icons.search,
                //        color: Colors.white,
                //      ),
                //      title: Text("www.studywarriors.co.in", style: TextStyle())),
                //),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
