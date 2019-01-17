import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  Widget build(BuildContext context) {
    return new AppBar(
        title: Text('Project Iceberg'),
        backgroundColor: Color.fromRGBO(0, 37, 76, 1.0),
      );
  }
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}