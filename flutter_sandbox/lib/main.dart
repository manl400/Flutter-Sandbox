import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:share/share.dart';

void main() {
  runApp(MyApp());
}

class RouteWidget extends StatefulWidget {
  @override
  _RouteWidgetState createState() => _RouteWidgetState();
}
class _RouteWidgetState extends State<RouteWidget> {
  var _address = "geo://0,0?q=2700+S+River+Rd%2C+Des+Plaines%2C+IL";

  Widget build(BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(Icons.near_me), 
              color: Colors.blue,
              onPressed: () => UrlLauncher.launch(_address)
            ),
          Container(
            child: 
            Text(
              'ROUTE',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      );
    }
}

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
              color: Colors.blue,
              onPressed: () => Share.share(_shareMessage)
            ),
          Container(
            child: 
            Text(
              'SHARE',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      );
    }
}

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
              color: Colors.blue,
              onPressed: () => UrlLauncher.launch(_telephoneNumber)
            ),
          Container(
            child: 
            Text(
              'CALL',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      );
    }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            icon: (_isFavorited
                ? Icon(Icons.star)
                : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18.0,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'American Eagle',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Des Plaines, Illinois',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          FavoriteWidget(),
        ],
      ),
    );


    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CallWidget(),
          RouteWidget(),
          ShareWidget(),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
        Since 1995, Americaneagle.com has completed more than 12,000 online solutions in nearly every industry, from small and mid sized businesses to Fortune 500 companies. We've also successfully completed websites and other online initiatives for professional sports teams as well as large associations. 

        Thanks to our wide range of experiences, we have the unique ability to see the wider picture when it comes to Web technology. If we find that an online tool works for one industry, we can identify its potential to bring success to another industry. Furthermore, with over 25 years of experience in the IT industry, our familiarity of the business allows for us to provide our customers with the most comprehensive Web services and support available. Our clients know that our services are done in house, so if there are ever any issues that need to be addressed, whether it involves hardware, software, programming, connectivity, or the updating of their sites, we have the means and resources to achieve an expedited resolution. 

        In addition to experience, another key to our success is our commitment and dedication to providing the best possible customer service to our clients. While other companies claim to provide top-notch customer service, Americaneagle.com actually delivers customer service that is unparalleled in the industry.
        ''',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter Sandbox',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Project Iceberg'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/building.jpg',
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}