import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded soundKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        child: Container(
          color: color,
        ),
        onPressed: () {
          playSound(number);
        },
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
            children: <Widget>[
              soundKey(color: Colors.red, number: 1),
              soundKey(color: Colors.orange, number: 2),
              soundKey(color: Colors.yellow, number: 3),
              soundKey(color: Colors.green, number: 4),
              soundKey(color: Colors.teal, number: 5),
              soundKey(color: Colors.blue, number: 6),
              soundKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
