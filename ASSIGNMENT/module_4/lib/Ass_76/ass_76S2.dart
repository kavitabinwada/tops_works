import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final int output;

  Screen2({required this.output});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Answer:$output',
          style: TextStyle(fontSize: 25, color: Colors.cyan),
        ),
      ),
    );
  }
}
