import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: question(),
        ),
      ),
    );

class question extends StatefulWidget {
  @override
  _questionState createState() => _questionState();
}

class _questionState extends State<question> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$num.png'),
          onPressed: (){
            setState(() {
              num = Random().nextInt(5)+1;
              print('button pressed');
            });
          },
        ),
      ),
    );
  }
}
