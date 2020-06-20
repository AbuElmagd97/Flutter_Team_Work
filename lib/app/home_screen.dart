import 'package:flutter/material.dart';
import 'package:flutterapp/app/item_card.dart';
import 'package:flutterapp/common_widgets/custom_card.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
    );
  }
}

Widget _buildContent(BuildContext context) {


  return Stack(
    children: <Widget>[
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1521017432531-fbd92d768814?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.hardLight),
          ),
        ),
      ),
      Positioned(
        right: 20,
        left: 20,
        top: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              child: ClipPolygon(
                sides: 6,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                      NetworkImage('https://i.redd.it/6onq25y0sh311.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            Icon(Icons.search, color: Color(0xFFBC906A), size: 32.0),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 110),
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height * 0.88,
        decoration: BoxDecoration(
          color: Color(0xFF5C3015),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
      Positioned(
        top: 100,
        left: 30,
        right: 30,
        bottom: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Brewing Coffe',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'MuseoModerno'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomCard(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.4,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.35,
                      borderRadius: 20,
                      color: Color(0xFFBC906A),
                      child: ItemCard(
                        text: 'Chemex',
                        assetName: 'images/chemex.png',
                        price: '15\$',
                        description: 'try coffe from kenya,Ethiopia',
                      ),
                    ),
                    SizedBox(
                        height: 30,
                        child: Text('Espresso', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'MuseoModerno'),)),
                    CustomCard(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.4,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.35,
                      borderRadius: 20,
                      color: Color(0xFFBC906A),
                      child: ItemCard(
                        text: 'Latte',
                        assetName: 'images/latte.png',
                        price: '10\$',
                        description: 'Espresso Steamed milk and thin of foam',
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomCard(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.4,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.35,
                      borderRadius: 20,
                      color: Color(0xFFBC906A),
                      child: ItemCard(
                        text: 'French Press',
                        assetName: 'images/french-press.png',
                        price: '20\$',
                        description: 'try coffe from sumatra,Mexico',
                      ),
                    ),
                    SizedBox(height: 30,),
                    CustomCard(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.4,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.35,
                      borderRadius: 20,
                      color: Color(0xFFBC906A),
                      child: ItemCard(
                        text: 'Cappuccino',
                        assetName: 'images/cappuccino.png',
                        price: '8\$',
                        description: 'Espresso Steamed milk and lots of foam',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
