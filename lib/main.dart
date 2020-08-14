import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

var firstCamera;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  firstCamera = cameras.first;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        camera: firstCamera,
      ),
    );
  }
}
