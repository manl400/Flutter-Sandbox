import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  Widget build(BuildContext context) {
    return new AppBar(
        title: Text('Project Iceberg'),
        backgroundColor: Theme.of(context).primaryColor,
      );
  }
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}