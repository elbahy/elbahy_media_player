import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(PlayerApp());
}

final player = AudioPlayer(); // Create a player
final duration = player.setUrl(// Load a URL
    'music/01.mp3');

class PlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(children: [
            TextButton(
                onPressed: () {
                  player.play();
                },
                child: Text("data",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold))),
          ]),
        ),
      ),
    );
  }
}
