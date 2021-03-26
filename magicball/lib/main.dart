import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int no = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text(
              'Ask Me Anything',
            ),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset(
                    'images/ball$no.png',
                  ),
                  onPressed: () {
                    setState(() {
                      no = Random().nextInt(5) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
