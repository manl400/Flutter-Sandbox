import 'package:flutter/material.dart';
import 'screens/HomePage/index.dart';

void main() {
  runApp(MyApp());
}

// Colors
// Color.fromRGBO(0, 37, 76, 1.0) >= Blue
// Color.fromRGBO(122, 132, 135, 1.0) = Silver
// Color.fromRGBO(235, 0, 36, 1.0) = Red
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sandbox',
      home: new HomePage(),
    );
  }
}
