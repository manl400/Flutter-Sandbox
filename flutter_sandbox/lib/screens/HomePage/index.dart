import 'package:flutter/material.dart';
import '../../widgets/appBar/index.dart';
import '../../widgets/raisedButton/index.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: AppBarWidget(),
      body: ListView(
        children: [
          Image.asset(
            'images/lake.jpg',
            height: 240.0,
            fit: BoxFit.cover,
          ),
          RaisedButtonWidget(),
        ],
      ),
      backgroundColor: Color.fromRGBO(225, 230, 225, 1.0),
    );
  }
}