import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceValue = 5;
  int rightDiceValue = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceValue = Random().nextInt(6) + 1;
      rightDiceValue = Random().nextInt(6) + 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              child: Image.asset('images/dice$leftDiceValue.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice$rightDiceValue.png'),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            )
          ),
        ],
      ),
    );
  }
}
//

