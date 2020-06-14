import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Center(
        child: Card(
          color: Colors.white,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Heba => Update color of container
              ),
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                //Todo: Change Text
                "Ay btengan :D!",  // Aya : I changed the text
                style: TextStyle(color: Colors.teal, fontSize: 25),
              )),
        ),
      ),
    );
  }
}
