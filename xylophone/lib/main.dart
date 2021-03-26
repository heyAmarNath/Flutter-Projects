import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Expanded buildKey({Color color, int no}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
        ),
        onPressed: () {
          playSound(no);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, no: 1),
              buildKey(color: Colors.orange, no: 2),
              buildKey(color: Colors.yellow, no: 3),
              buildKey(color: Colors.green, no: 4),
              buildKey(color: Colors.teal, no: 5),
              buildKey(color: Colors.blue, no: 6),
              buildKey(color: Colors.purple, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
