// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(PlayerApp()
}

class PlayerApp extends StatelessWidget {
  Expanded AddButton(String name, int id, Color cl) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(0.1),
        child: TextButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource("0$id.mp3"));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(children: [
              Icon(Icons.music_note, color: cl),
              SizedBox(width: 20),
              Text(name, style: TextStyle(color: cl, fontSize: 20))
            ]),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Row(
              children: [
                Icon(Icons.queue_music_sharp),
                Text("  Ringtones"),
              ],
            ),
          ),
          backgroundColor: Colors.blue,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AddButton("Samsung", 1, Colors.green),
              AddButton("Iphone 12", 2, Colors.red),
              AddButton("Nokia", 3, Colors.green),
              AddButton("iphone 6", 4, Colors.red),
              AddButton("WhatsApp", 5, Colors.black),
              AddButton("Samsung S7", 6, Colors.brown),
              AddButton("Xiaomi", 7, Colors.redAccent),
              AddButton("Lenovo", 8, Colors.green)
            ],
          ),
        ),
      ),
    );
  }
}
