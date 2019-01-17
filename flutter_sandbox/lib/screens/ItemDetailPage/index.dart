import 'package:flutter/material.dart';
import 'itemDetailPage.dart';
import '../../widgets/appBar/index.dart';

class ItemDetailPage extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: AppBarWidget(),
      body: ListView(
        children: [
          Image.asset(
            'images/building.jpg',
            height: 240.0,
            fit: BoxFit.cover,
          ),
          TitleAreaWidget(),
          ButtonRowWidget(),
          DescriptionWidget(),
        ],
      ),
      backgroundColor: Color.fromRGBO(225, 230, 225, 1.0),
    );
  }
}