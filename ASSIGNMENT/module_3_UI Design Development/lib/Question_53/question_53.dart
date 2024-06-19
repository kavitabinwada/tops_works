import 'dart:ffi';

import 'package:flutter/material.dart';

class Ass53 extends StatefulWidget {
  @override
  State<Ass53> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Ass53> {
  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.black,
    Colors.white,
    Colors.cyan,
    Colors.yellow,
    Colors.purple,
    Colors.pinkAccent,
    Colors.lime,
  ];
  int currentIndex = 0;
  void changeColor() {
    setState(() {
      currentIndex = (currentIndex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Change Background Color'),
        ),
        body: Center(
            child: Container(
          color: colors[currentIndex],
          child: Center(
            child: ElevatedButton(
              onPressed: changeColor,
              child: Text('Change Color'),
            ),
          ),
        )));
  }
}
