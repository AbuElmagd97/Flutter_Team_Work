import 'package:flutter/material.dart';
import 'package:flutterapp/common_widgets/custom_card.dart';
import 'package:flutterapp/common_widgets/favorite.dart';

class ItemCard extends CustomCard {
  ItemCard({
    @required String text,
    @required String price,
    @required String description,
    @required String assetName,
  })  : assert(assetName != null),
        assert(text != null),
        super(
          child: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    assetName,
                    width: 150,
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        text,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: 'MuseoModerno',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'MuseoModerno',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'MuseoModerno'),
                  ),
                ],
              ),
              Favorite(),
            ],
          ),
        );
}
