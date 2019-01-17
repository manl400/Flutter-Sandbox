import 'package:flutter/material.dart';
import '../../widgets/appBar/index.dart';
import '../../widgets/raisedButton/index.dart';
import '../../widgets/imageHeader/index.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: AppBarWidget(),
      body: ListView(
        children: [
          ImageHeaderWidget(
            imagePath: 'images/lake.jpg',
            ),
          Center(
            child: RaisedButtonWidget(),
          )
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}