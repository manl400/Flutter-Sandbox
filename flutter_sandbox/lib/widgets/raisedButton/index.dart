import 'package:flutter/material.dart';
import '../../screens/ItemDetailPage/index.dart';


class RaisedButtonWidget extends StatefulWidget {
  @override
  _RaisedButtonWidgetState createState() => _RaisedButtonWidgetState();
}

class _RaisedButtonWidgetState extends State<RaisedButtonWidget> {

  Widget build(BuildContext context) {
    return RaisedButton (
      elevation: 4.0,
      textColor: Colors.white,
      color: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) {
              return ItemDetailPage();
            },
            transitionsBuilder: (context, animation1, animation2, child) {
              return FadeTransition(
                opacity: animation1,
                child: child,
              );
            },
            transitionDuration: Duration(milliseconds: 500),
          ),
        );
      },
      child: new Text(
        "Headquarters",
      ),
    );
  }
}