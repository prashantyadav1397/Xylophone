import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int note}) {
    return Expanded(
      //  ignore: missing_required_param
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, note: 1),
              buildKey(color: Colors.orange, note: 2),
              buildKey(color: Colors.yellow, note: 3),
              buildKey(color: Colors.green, note: 4),
              buildKey(color: Colors.blue, note: 5),
              buildKey(color: Colors.indigo, note: 6),
              buildKey(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
