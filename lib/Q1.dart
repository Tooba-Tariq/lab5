import 'dart:html';

import "package:audioplayers/audioplayers.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var click = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 40, 70),
          title: Text("Ask Me Anything"),
        ),
        body: Container(
          height: double.infinity,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    click = Random().nextInt(4) + 1;
                    print(" I got clicked $click");
                  });
                },
                child: Image.asset("assets/images/ball$click.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
