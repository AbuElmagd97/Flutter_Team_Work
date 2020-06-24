import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  SocialButton({
    this.child,
    this.color,
    this.borderRadius: 2.0,
    this.onPressed,
  }) : assert(borderRadius != null);

  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: child,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
        ),
      ),
      color: color,
      onPressed: onPressed,
    );
  }
}
