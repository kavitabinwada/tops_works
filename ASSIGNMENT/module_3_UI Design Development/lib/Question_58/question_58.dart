import 'package:flutter/material.dart';

class Ass58 extends StatefulWidget {
  @override
  State<Ass58> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Ass58> {
  double red = 0.0, green = 0.0, blue = 0.0;
  Color bgColor = Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Seekbar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Slider(
                    max: 255,
                    value: red,
                    onChanged: (value) {
                      setState(() {
                        red = value;
                        changebgColor();
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Slider(
                    max: 255,
                    value: green,
                    onChanged: (value) {
                      setState(() {
                        green = value;
                        changebgColor();
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Slider(
                    max: 255,
                    value: blue,
                    onChanged: (value) {
                      setState(() {
                        blue = value;
                        changebgColor();
                      });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  void changebgColor() {
    bgColor = Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1);
  }
}
