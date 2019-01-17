import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class RouteWidget extends StatefulWidget {
  @override
  _RouteWidgetState createState() => _RouteWidgetState();
}
class _RouteWidgetState extends State<RouteWidget> {
  var _address = "geo://0,0?q=2700+S+River+Rd%>2C+Des+Plaines%2C+IL";

  Widget build(BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(Icons.near_me), 
              color: Theme.of(context).primaryColor,
              onPressed: () => UrlLauncher.launch(_address)
            ),
          Container(
            child: 
            Text(
              'ROUTE',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      );
    }
}
