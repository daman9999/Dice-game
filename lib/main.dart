import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Match Me')),
          backgroundColor: Colors.red,
        ),
        body:
        DicePage(),
      ),
    ),
  );
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

            ],
          ),
        ),

    );
  }
}

class DicePage extends StatefulWidget {

  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override

  int leftdicenumber=1,rightdicenumber=1;
  void changeDiceFace()
      {
        setState(() {
          leftdicenumber=Random().nextInt(6)+1;
          rightdicenumber = Random().nextInt(6)+1;
          if(leftdicenumber==rightdicenumber && rightdicenumber>6)
          {
            rightdicenumber += 1;
          }
            print('rightdicenumber=$rightdicenumber // leftdicenumber=$leftdicenumber');

        });

        }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          /*****************************///////
          Expanded(
            child: FlatButton(
              onPressed: () {
                  changeDiceFace();
              },
              child: Image.asset(
                'images/dice$leftdicenumber.png',
              ),
            ),
          ),
          /*---------------------------------*/
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
          /*--------------------------------------*/

        ],
      ),
    );
  }
}
