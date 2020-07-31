import 'lastcontainer.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'cards.dart';


class Result extends StatelessWidget {
  Result(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText,
      @required this.color,
      @required this.ideal});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final color;
  final ideal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: cards(
              color: kActiveCardColour,
              cardschild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        color: color,
                       fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                  ),),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Ideal Weight : ",style: TextStyle(fontSize: 18,color: Colors.white30),),
                      Text(ideal,style: kBodyTextStyle,)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Normal BMI Range",style: TextStyle(fontSize: 18,color: Colors.white30),),
                      SizedBox(height: 5,),
                      Text("18.5-25 kg/m2",style: kBodyTextStyle,),
                    ],
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          lastconatiner(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}