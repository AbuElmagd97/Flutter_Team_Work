import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: 120,
      child: IconButton(
        onPressed: () {
          setState(() {
            favoriteClicked();
          });
        },
        icon: Icon(
          isClicked ? Icons.favorite_border : Icons.favorite,
          color: isClicked ? Colors.white : Colors.red,
          size: 25,
        ),
      ),
    );
  }

  void favoriteClicked() {
    setState(() {
      isClicked = !isClicked;
    });
  }
}
