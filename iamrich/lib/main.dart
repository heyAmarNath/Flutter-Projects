import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(IAmRich());
}

class IAmRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'I Am Rich',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.bold,
                letterSpacing: 5.00,
              ),
            ),
          ),
          backgroundColor: Colors.red[900],
        ),
        backgroundColor: Colors.red[50],
        body: Container(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1612810806546-ebbf22b53496?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80'),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image(
                  width: 200.00,
                  image: AssetImage('images/pro.png'),
                ),
              ),
              Card(
                margin: EdgeInsets.all(25),
                color: Colors.red[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Amar Nath',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
