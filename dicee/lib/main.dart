import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Dicee());
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int left = 1, right = 1;
  void press() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text(
              'Dicee',
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    press();
                  },
                  child: Image.asset(
                    'images/dice$left.png',
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    press();
                  },
                  child: Image.asset(
                    'images/dice$right.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
