import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.orange, number: 1),
                buildKey(color: Colors.yellow, number: 2),
                buildKey(color: Colors.green, number: 3),
                buildKey(color: Colors.blue, number: 4),
                buildKey(color: Colors.cyan, number: 5),
                buildKey(color: Colors.purple, number: 6),
                buildKey(color: Colors.red, number: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
