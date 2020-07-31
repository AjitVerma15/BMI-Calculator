import 'package:flutter/material.dart';
import 'constant.dart';
class Iconmaleorfemale extends StatelessWidget {

  Iconmaleorfemale({@required this.icon,@required this.label});

  final icon;
  final label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 80,),
        SizedBox(height: 15.0,),
        Text(label,style: kLabelTextStyle,)
      ],
    );
  }
}
