import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }

  Expanded soundId({required int sound, required Color color}) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            playSound(sound);
          },
          child: null,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "xylophone",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundId(sound: 1, color: Colors.red),
              soundId(sound: 2, color: Colors.orange),
              soundId(sound: 3, color: Colors.yellow),
              soundId(sound: 4, color: Colors.green),
              soundId(sound: 5, color: Colors.teal),
              soundId(sound: 6, color: Colors.blue),
              soundId(sound: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
