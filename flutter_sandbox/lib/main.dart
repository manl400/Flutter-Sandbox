import 'package:flutter/material.dart';
import 'screens/HomePage/index.dart';
import 'util/theme.dart' as Theme;

void main() {
  runApp(MyApp());
}

// Colors
// Color.fromRGBO(122, 132, 135, 1.0) = Silver
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sandbox',
      theme: Theme.mainTheme,
      home: new HomePage(),
    );
  }
}
