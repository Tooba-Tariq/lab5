import "package:audioplayers/audioplayers.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Q2());
}

class Q2 extends StatelessWidget {
  const Q2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  bar(1, Colors.yellowAccent),
                  bar(2, Colors.black),
                  bar(3, Color.fromARGB(255, 82, 18, 93)),
                  bar(4, Color.fromARGB(255, 14, 94, 105)),
                  bar(5, Colors.orange.shade800),
                  bar(6, Colors.red.shade900),
                  bar(7, Color.fromARGB(255, 7, 235, 14)),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Expanded bar(int number, Color color) {
    return Expanded(
      child: Container(
        height: double.infinity,
        color: color,
        child: TextButton(
          onPressed: () {
            AudioPlayer audioPlayer = AudioPlayer();
            audioPlayer.play("assets/note$number.wav");
          },
          child: Text(""),
        ),
      ),
    );
  }
}
