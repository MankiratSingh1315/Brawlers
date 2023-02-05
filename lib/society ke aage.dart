import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:hackathonn/camera.dart';
import 'package:hackathonn/location.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const complaintApp());
}

class complaintApp extends StatefulWidget {
  const complaintApp({super.key});

  @override
  State<complaintApp> createState() => _complaintAppState();
}

class _complaintAppState extends State<complaintApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: app(),
    );
  }
}

class app extends StatefulWidget {
  Position? position;

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint box'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await availableCameras().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CameraPage(
                          cameras: value,
                        ),
                      ),
                    ),
                  );
                },
                child: Text('Add Photo')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text('Add Location'))
          ],
        ),
      ),
    );
  }
}
