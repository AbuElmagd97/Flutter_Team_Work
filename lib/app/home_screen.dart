import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class HomeScreen extends StatelessWidget {
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
        top: 50,
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
        margin: EdgeInsets.only(top: 140),
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height * 0.85,
        decoration: BoxDecoration(
          color: Color(0xFF5C3015),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    ],
  );
}
