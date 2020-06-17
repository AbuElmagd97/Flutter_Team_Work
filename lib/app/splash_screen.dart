import 'package:flutter/material.dart';
import 'package:flutterapp/app/home_screen.dart';

class SplashScreen extends StatelessWidget {
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
          color: Color(0xFF5C3015),
          image: DecorationImage(
            image: AssetImage('images/cofeee.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Color(0xff5C3015).withOpacity(0.8),
              BlendMode.hardLight,
            ),
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/coffee-cup.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Coffee Shop',
            style: TextStyle(
              fontFamily: 'Caveat',
              color: Colors.white,
              fontSize: 32.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
      Positioned(
        bottom: 50,
        left: 100,
        right: 100,
        child: SizedBox(
          width: 150,
          child: RaisedButton(
            onPressed: () =>
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              ),
            },
            color: Color(0xFF5C3015),
            child: Text(
              'Get Started',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontFamily: 'Caveat',
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
    ],
  );
}
