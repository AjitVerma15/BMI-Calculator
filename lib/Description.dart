import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: Text('BMI CALCULATOR')),),
    body: SafeArea(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Text('BMI',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          Text('Body Mass Index',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Body Mass Index (BMI) is a measurement of a person\’s weight with respect to his or her height. It is more of an indicator than a direct measurement of a person\’s total body fat. "
                "BMI, more often than not, correlates with total body fat. This means that as the BMI score "
                "increases, so does a person\’s total body fat.",style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16.0),
            child: Center(child: Image.asset('images/chart.jpg',)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("The WHO defines an adult who has a BMI between 25 and 29.9 as overweight - an adult who "
                "has a BMI of 30 or higher is considered obese - a BMI below 18.5 is considered underweight, "
                "and between 18.5 to 24.9 a healthy weight .",style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("The formula is - BMI = (Weight in kilograms) divided by (Height in metres squared)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Container(
              height: 85,
              width: double.infinity,
              color: Color(0xFFEB1555),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 4.0),
                child: Column(
                  children: <Widget>[
                    Text("Made with 🖤 by Ajit Verma",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        iconbutton(icon: FontAwesomeIcons.instagram,url: 'https://www.instagram.com/ajit.verma_/'),
                        iconbutton(icon: FontAwesomeIcons.github,url: 'https://github.com/ajitverma15'),
                        iconbutton(icon: FontAwesomeIcons.linkedin,url: 'https://www.linkedin.com/in/ajit-verma-70b9b0196'),
                        iconbutton(icon: FontAwesomeIcons.googlePlus,url: 'mailto:ajitverma1503@gmail.com'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),);
  }
}

class iconbutton extends StatelessWidget {

  iconbutton({@required this.icon,@required this.url});

  final icon;
  final url;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon,color: Colors.white,),
        onPressed: () async {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        }
    );
  }
}
