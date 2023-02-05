import 'dart:async';
import 'package:flutter/material.dart';

class MyFeedback extends StatefulWidget {
  const MyFeedback({super.key});

  @override
  State<MyFeedback> createState() => _MyFeedbackState();
}

class _MyFeedbackState extends State<MyFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 35,
                  left: 35),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'TYPE YOUR FEEDBACK ',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
