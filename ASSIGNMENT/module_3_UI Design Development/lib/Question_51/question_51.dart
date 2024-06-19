import 'package:flutter/material.dart';

class Ass51 extends StatefulWidget {
  @override
  State<Ass51> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Ass51> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  List<int> B = [];
  void numberofIndex() {
    int num1 = int.parse(_num1.text);
    int num2 = int.parse(_num2.text);
    List<int> numbers = List.generate(num2 - num1 + 1, (index) => num1 + index);
    setState(() {
      B = numbers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('two number index'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _num1,
              decoration: InputDecoration(labelText: 'enter the number'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _num2,
              decoration: InputDecoration(labelText: 'enter the number'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  numberofIndex();
                },
                child: Text('press to index')),
            SizedBox(
              height: 10,
            ),
            Text('$B'),
          ],
        ),
      ),
    );
  }
}
