import 'package:flutter/material.dart';
import 'package:hackathonn/feedback.dart';
import 'package:hackathonn/society%20ke%20aage.dart';

class Mysociety extends StatefulWidget {
  const Mysociety({super.key});

  @override
  State<Mysociety> createState() => _SocietyState();
}

class _SocietyState extends State<Mysociety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Society'),
      ),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => complaintApp()),
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
                        title: Text("COMPLAINT SECTION", style: TextStyle()))),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyFeedback()),
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
                      title: Text("FEEDBACK SECTION", style: TextStyle())),
                ),
              ),
              Card(
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 10.0,
                ),
                child: ListTile(
                    title:
                        Text("NOTICE FROM MUNICIPALITY", style: TextStyle())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
