import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('S   U   P   E  R',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 50,
                  color: Colors.red.shade100)),
          backgroundColor: Colors.blueAccent[100],
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
  int leftDiceNumber = 0;
  int richtDiceNumber = 0;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      richtDiceNumber = Random().nextInt(6) + 1;
      print('leftDiceNumber = $leftDiceNumber');
      print('richtDiceNumber = $richtDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    heightFactor: 1,
                    child: (Image.asset('images/z.gif')),
                  ),
                  width: 450,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.cyan],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text('D    I    C    E    E',
                        style: TextStyle(
                            fontFamily: 'Source Sans Pro',
                            fontSize: 45,
                            color: Colors.white)),
                  ),
                  width: 428,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.cyan],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
