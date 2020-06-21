import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/common_widgets/custom_incrementer.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5C3015),
      body: _buildItem(context),
    );
  }
}

Widget _buildItem(BuildContext context) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: Image.asset(
              'images/french_press.jpg',
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.hardLight,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFFBC906A),
                size: 32.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      SizedBox(
        height: 25,
      ),
      Padding(
        padding: EdgeInsets.all(16.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Brewing',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFFAC9682),
              ),
            ),
            Text(
              'French Press',
              style: TextStyle(
                fontSize: 22.0,
                fontFamily: 'MuseoModerno',
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomIncrementer(),
                Text(
                  '\$15',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xFFBC906A),
                      fontFamily: 'MuseoModerno'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 80,
              child: Text(
                'A full-bodied cup using a metal filter permits oils to pass.\nDraker roasrs typically taste better brewed this way.try \ncoffees from sumatra,Mexico, or Brazil',
                style: TextStyle(color: Color(0xFFB4ACA5), fontSize: 15.0),
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'volume: ',
                  style: TextStyle(color: Color(0xFFB4ACA5), fontSize: 15.0),
                  textAlign: TextAlign.start,
                ),
                Text(
                  ' 32oz',
                  style: TextStyle(color: Color(0xFFBC906A), fontSize: 15.0),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: RaisedButton(
          onPressed: () {
            //TODO:  Implement Callback
          },
          child: Text(
            'Order Now',
            style: TextStyle(
                color: Color(
                  0xFF240F04,
                ),
                fontFamily: 'MuseoModerno',
                fontSize: 28.0),
          ),
          color: Color(0xFFBC906A),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
        ),
      ),
    ],
  );
}
