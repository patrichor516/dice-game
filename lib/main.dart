import 'dart:developer' as dev;
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceFace = 3;
  int rightDiceFace = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
      child: Center(
      child: Row(
      children: <Widget> [
      Expanded(
        child: TextButton(
          onPressed: () {
            dev.log("Left Dice Clicked");
            final Random rand = Random();
            setState(() {
              leftDiceFace = rand.nextInt(6) +1;
            });
          },
        child: Image.asset("images/Dice$leftDiceFace.png")
        ),
        ),

      
      Expanded(
        child: TextButton(
          onPressed: () {
            dev.log("Right Dice Clicked");
            final Random rand = Random();
            setState(() {
              rightDiceFace = rand.nextInt(6) +1;
            });
          },
          
        child: Image.asset("images/Dice$rightDiceFace.png")
        ),
        
            ),
           ],
         ),
        ),
      ),
    );
  }
}