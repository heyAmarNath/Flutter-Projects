import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const cardColor = Color(0xFF1D1E33);
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
void main() => runApp(bmi_calculator());

class bmi_calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Input_Page(),
    );
  }
}

class Input_Page extends StatefulWidget {
  @override
  _Input_PageState createState() => _Input_PageState();
}

class _Input_PageState extends State<Input_Page> {
  Color maleCardColor = inactiveCardColour;
  Color femaleCardColor = inactiveCardColour;
  void updateCard(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColour) {
        maleCardColor = activeCardColour;
        femaleCardColor = inactiveCardColour;
      } else
        maleCardColor = inactiveCardColour;
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColour) {
        femaleCardColor = activeCardColour;
        maleCardColor = inactiveCardColour;
      } else
        femaleCardColor = inactiveCardColour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild:
                          IconCard(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                    onTap: () {
                      setState(() {
                        updateCard(1);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateCard(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: IconCard(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: cardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: cardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: cardColor),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            height: 80,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  IconCard({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xFFFFFFFF),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
              color: Color(0XFF8D8E98),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
