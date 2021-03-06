import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: DicePage(),
      ),
      )
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice =1;
  var rightDice=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: (){
              setState(() {
                leftDice=Random().nextInt(6)+1;
                rightDice=Random().nextInt(6)+1;
              });
            },
      
            child: Image.asset('images/dice$leftDice.png'),
                ),
            ),
        Expanded(

          child: FlatButton(
            onPressed: (){
              setState(() {
                leftDice=Random().nextInt(6)+1;
                rightDice=Random().nextInt(6)+1;
              });
              
            },
              child:  Image.asset('images/dice$rightDice.png'),
            )
          ),
      ],
    )
    );
  }
}