import 'package:flutter/material.dart';

class Ass57 extends StatefulWidget {
  @override
  State<Ass57> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Ass57> {
  Color selectColor = Colors.white70;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Material App Bar'),
      ),
      backgroundColor: selectColor,
      body: Center(
        child: Container(
          child: Column(
            children: [
              RadioListTile(
                  title: Text('Yellow'),
                  value: Colors.yellow,
                  groupValue: selectColor,
                  onChanged: changeBackgroundColor),
              RadioListTile(
                  title: Text('Red'),
                  value: Colors.red,
                  groupValue: selectColor,
                  onChanged: changeBackgroundColor),
              RadioListTile(
                  title: Text('Purple'),
                  value: Colors.purple,
                  groupValue: selectColor,
                  onChanged: changeBackgroundColor),
              RadioListTile(
                  title: Text('Green'),
                  value: Colors.green,
                  groupValue: selectColor,
                  onChanged: changeBackgroundColor),
              RadioListTile(
                  title: Text('Cyan'),
                  value: Colors.cyanAccent,
                  groupValue: selectColor,
                  onChanged: changeBackgroundColor),
            ],
          ),
        ),
      ),
    );
  }

  void changeBackgroundColor(Color? c) {
    setState(() {
      selectColor = c!;
    });
  }
}
