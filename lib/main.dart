import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  )),
              ElevatedButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  )),
              ElevatedButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  )),
              ElevatedButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  )),
              ElevatedButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  )),
              ElevatedButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  )),
              ElevatedButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
