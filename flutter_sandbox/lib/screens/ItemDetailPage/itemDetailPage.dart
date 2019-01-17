import 'package:flutter/material.dart';
import 'widget/callButton/index.dart';
import 'widget/routeButton/index.dart';
import 'widget/shareButton/index.dart';
import 'widget/favoriteButton/index.dart';


class TitleAreaWidget extends StatefulWidget {
  @override
  _TitleAreaWidgetState createState() => _TitleAreaWidgetState();
}
class _TitleAreaWidgetState extends State<TitleAreaWidget> {
  Widget build(BuildContext context) {
    return Container(
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
  }
}

class ButtonRowWidget extends StatefulWidget {
  @override
  _ButtonRowState createState() => _ButtonRowState();
}
class _ButtonRowState extends State<ButtonRowWidget> {
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CallWidget(),
          RouteWidget(),
          ShareWidget(),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatefulWidget {
  @override
  _DescriptionWidgetState createState() => _DescriptionWidgetState();
}
class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build (BuildContext context) {
    return Container(
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
  }
}