import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class CallWidget extends StatefulWidget {
  @override
  _CallWidgetState createState() => _CallWidgetState();
}
class _CallWidgetState extends State<CallWidget> {
  var _telephoneNumber = "tel://8476990300";

  Widget build(BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(Icons.call), 
              color: Theme.of(context).primaryColor,
              onPressed: () => UrlLauncher.launch(_telephoneNumber)
            ),
          Container(
            child: 
            Text(
              'CALL',
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