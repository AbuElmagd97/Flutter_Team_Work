import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {this.child, this.color, this.height, this.borderRadius, this.width});

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}
