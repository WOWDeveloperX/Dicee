import 'package:flutter/material.dart';
import 'dart:math';

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
  const DicePage({Key key}) : super(key: key);

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<DicePage> {
  int leftDiceNumber = 1;
  int richtDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      richtDiceNumber = Random().nextInt(6) + 1;
      print('leftDiceNumber = $leftDiceNumber');
      print('richtDiceNumber = $leftDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: (Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: (Image.asset('images/dice$richtDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
