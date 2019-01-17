import 'package:flutter/material.dart';
import 'itemDetailPage.dart';
import '../../widgets/appBar/index.dart';
import '../../widgets/imageHeader/index.dart';

class ItemDetailPage extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return new Scaffold(
      appBar: AppBarWidget(),
      body: ListView(
        children: [
          ImageHeaderWidget(
            imagePath: 'images/building.jpg',
          ),
          TitleAreaWidget(),
          ButtonRowWidget(),
          DescriptionWidget(),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}