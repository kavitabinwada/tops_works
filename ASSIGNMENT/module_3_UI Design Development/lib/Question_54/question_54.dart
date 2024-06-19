import 'package:flutter/material.dart';

class Ass54 extends StatefulWidget {
  @override
  State<Ass54> createState() => _FontSizeChangerState();
}

class _FontSizeChangerState extends State<Ass54> {
  double fontSize = 20.0;
  void increaseFontSize() {
    setState(() {
      // fontSize = fontSize + 1.0;
      fontSize++;
    });
  }

  void decreaseFontSize() {
    setState(() {
      // fontSize = fontSize - 1.0;
      fontSize--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Font Size Changer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: increaseFontSize,
                child: Text('Increase Font Size'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan.shade500),
              ),
              ElevatedButton(
                onPressed: decreaseFontSize,
                child: Text('Decrease Font Size'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan.shade300),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'My FontSize will be changed',
                style: TextStyle(fontSize: fontSize),
              )
            ],
          ),
        ));
  }
}
