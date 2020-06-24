import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapp/app/home_screen.dart';
import 'package:flutterapp/common_widgets/social_button.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5C3015),
      body: _buildContent(context),
    );
  }
}

Widget _buildContent(BuildContext context) {
  return Stack(
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'images/coffee-cup.png',
            width: 100,
            height: 100,
            color: Color(0xFFBC906A),
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
          SizedBox(height: 20),
          SizedBox(
            height: 50.0,
            child: SocialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              borderRadius: 20,
              color: Color(0xFFBC906A),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'images/facebook-logo.png',
                    color: Color(0xFF334D92),
                  ),
                  Text(
                    'Login with facebook',
                    style: TextStyle(
                      fontFamily: 'MuseoModerno',
                      color: Color(0xFF240F04),
                      fontSize: 18.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/facebook-logo.png'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50.0,
            child: SocialButton(
              onPressed: () {},
              borderRadius: 20,
              color: Color(0xFFBC906A),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'images/google-logo.png',
                    color: Colors.white,
                  ),
                  Text(
                    'Login with google',
                    style: TextStyle(
                      fontFamily: 'MuseoModerno',
                      color: Color(0xFF240F04),
                      fontSize: 18.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/google-logo.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
