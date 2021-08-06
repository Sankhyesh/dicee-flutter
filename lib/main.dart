import 'package:flutter/material.dart';
import 'dart:math';

///made by sankheysh
import 'package:flutter/services.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 3;
  int rightdiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    // leftdiceNumber = 3;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceValue();
              },
              child: Image.asset('images/dice$leftdiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                diceValue();
              },
              child: Image.asset('images/dice$rightdiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void diceValue() {
    setState(() {
      rightdiceNumber = Random().nextInt(6) + 1;
      leftdiceNumber = Random().nextInt(6) + 1; //numbers from 1 to 6
    });
  }
}
