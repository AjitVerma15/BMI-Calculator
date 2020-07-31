import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'InputPage.dart';
void main(){
  runApp(new MaterialApp(
    home: BMI(),
  ));
}


class BMI extends StatefulWidget {
  @override
  _BMIState createState() => new _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 2,
        navigateAfterSeconds: AfterSplash(),
        title: new Text('BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          ),),
        image: Image.asset('images/BMIimage.png'),
        photoSize: 150,
        backgroundColor: Color(0xFF0A0E21),
        loaderColor: Colors.white
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}