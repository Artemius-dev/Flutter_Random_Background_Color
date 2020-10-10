import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomScreenColor(),
    ));

class RandomScreenColor extends StatefulWidget {
  @override
  _RandomScreenColorState createState() => _RandomScreenColorState();
}

class _RandomScreenColorState extends State<RandomScreenColor> {
  // Starter color for background
  var backgroundColor = Colors.white;
  var textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // https://stackoverflow.com/questions/58232078/how-to-change-the-color-of-text-dynamically-in-flutter
        setState(() => backgroundColor =
            Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                .withOpacity(1.0)); // this is generate random color
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text(
            "Tap Anywhere",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.grey[750],
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Hey there",
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
