import 'package:flutter/material.dart';

class ImageHeaderWidget extends StatelessWidget{
  final String imagePath;

  const ImageHeaderWidget({Key key, this.imagePath}): super(key: key);

  Widget build(BuildContext context){
    return Image.asset(
            imagePath,
            height: 240.0,
            fit: BoxFit.cover,
    );
  }
}