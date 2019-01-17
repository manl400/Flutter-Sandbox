import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ShareWidget extends StatefulWidget {
  @override
  _ShareWidgetState createState() => _ShareWidgetState();
}
class _ShareWidgetState extends State<ShareWidget> {
  var _shareMessage = '''
  American Eagle
  Des Plaines, Illinios

  Get a Job here: https://jobs.americaneagle.com/
  ''';

  Widget build(BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(Icons.share), 
              color: Color.fromRGBO(0, 37, 76, 1.0),
              onPressed: () => Share.share(_shareMessage)
            ),
          Container(
            child: 
            Text(
              'SHARE',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 37, 76, 1.0),
              ),
            ),
          ),
        ],
      );
    }
}
