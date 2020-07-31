import 'package:bmicalculator/Roundicon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Description.dart';
import 'cards.dart';
import 'constant.dart';
import 'Iconmaleandfenale.dart';
import 'lastcontainer.dart';
import 'brain.dart';
import 'Result.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 175;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.infoCircle,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Description()),
              );
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: cards(
                    onPressed: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    color: selectedgender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardschild: Iconmaleorfemale(
                      icon: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                    child: cards(
                  onPressed: () {
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  color: selectedgender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardschild: Iconmaleorfemale(
                    icon: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: cards(
              color: Color(0xFF1D1E33),
              cardschild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: cards(
                    color: kActiveCardColour,
                    cardschild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'kg',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundicon(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundicon(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: cards(
                    color: kActiveCardColour,
                    cardschild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'yrs',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Roundicon(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundicon(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          lastconatiner(
            buttonTitle: 'CALCULATE',
            onTap: () {
              Brain bra = Brain(height: height,weight: weight,gender: selectedgender);
              print(selectedgender);
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(
               bmiResult: bra.calculateBMI(),
               interpretation: bra.getInterpretation(),
               resultText: bra.getResult(),
               color: bra.getcolor(),
               ideal: bra.getidealweight(),
             )),);
            },
          ),
        ],
      ),
    );
  }
}
