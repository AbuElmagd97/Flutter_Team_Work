import 'package:flutter/material.dart';

class CustomIncrementer extends StatefulWidget {
  @override
  _CustomIncrementerState createState() => _CustomIncrementerState();
}

class _CustomIncrementerState extends State<CustomIncrementer> {
  int _i = 1;
  int _price = 15;
  int _currentPrice = 15;

  @override
  Widget build(BuildContext context) {
    totalPrice();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 115,
          height: 40,
          decoration: BoxDecoration(
              color: Color(0xFF5C3015),
              boxShadow: [BoxShadow(color: Color(0xFFBC906A), spreadRadius: 1)],
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  decrement();
                },
                icon: Icon(
                  Icons.remove,
                  size: 20,
                  color: Color(0xFFBC906A),
                ),
              ),
              Text(
                '$_i',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 20,
                    color: Color(0xFFBC906A),
                  ),
                  onPressed: () {
                    increment();
                  }),
            ],
          ),
        ),
        Text(
          '\$$_currentPrice',
          style: TextStyle(
              fontSize: 22.0,
              color: Color(0xFFBC906A),
              fontFamily: 'MuseoModerno'),
        ),
      ],
    );
  }

  void increment() {
    setState(() {
      _i++;
    });
  }

  void decrement() {
    setState(() {
      if (_i > 1) {
        _i--;
      }
    });
  }

  void totalPrice() {
    setState(() {
      _currentPrice = _i * _price;
    });
  }
}
