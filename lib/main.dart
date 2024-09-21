import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF00203F),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(color: Color(0xFF00203F)
              ),
            ),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber =
                Random().nextInt(5) + 1; // Generates numbers between 1 - 5.
          });
          print('ballNumber: $ballNumber');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
