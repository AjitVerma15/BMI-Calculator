import 'package:flutter/material.dart';

class cards extends StatelessWidget {

  cards({@required this.color,this.cardschild,this.onPressed});
  final color;
  final cardschild;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardschild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}