import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Ass52 extends StatefulWidget {
  @override
  State<Ass52> createState() => _MycalculatorState();
}

class _MycalculatorState extends State<Ass52> {
  TextEditingController numController1 = TextEditingController();
  TextEditingController numController2 = TextEditingController();
  double result = 0;
  String? operation;
  void clculateResult(String operation) {
    double num1 = double.parse(numController1.text);
    double num2 = double.parse(numController2.text);
    setState(() {
      if (operation == 'Addition') {
        result = num1 + num2;
      } else if (operation == 'Subtraction') {
        result = num1 - num2;
      } else if (operation == 'Multiplication') {
        result = num1 * num2;
      } else if (operation == 'Division') {
        result = num1 / num2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                controller: numController1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter number 1')),
            TextField(
              controller: numController2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Radio(
                      value: 'Addition',
                      groupValue: operation,
                      onChanged: (value) {
                        _setSelection(value);
                        clculateResult(value!);
                      },
                    ),
                    Text('Addition'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Subtraction',
                      groupValue: operation,
                      onChanged: (value) {
                        _setSelection(value);
                        clculateResult(value!);
                      },
                    ),
                    Text('Subtraction'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Multiplication',
                      groupValue: operation,
                      onChanged: (value) {
                        _setSelection(value);
                        clculateResult(value!);
                      },
                    ),
                    Text('Multiplication'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Division',
                      groupValue: operation,
                      onChanged: (value) {
                        _setSelection(value);
                        clculateResult(value!);
                      },
                    ),
                    Text('Division'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Result:$result',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _setSelection(String? value) {
    setState(() {
      operation = value;
    });
  }
}
