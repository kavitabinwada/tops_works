import 'package:flutter/material.dart';

class Ass50 extends StatefulWidget {
  @override
  State<Ass50> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<Ass50> {
  TextEditingController Reverse = TextEditingController();
  String R = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse number'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: Reverse,
                decoration: InputDecoration(labelText: 'enter a number'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  changeReverse();
                },
                child: Text('click to reverse'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('reverse number is:$R'),
            ],
          ),
        ),
      ),
    );
  }

  void changeReverse() {
    String input = Reverse.text;
    String reverse = input.split('').reversed.join();
    print('reverse');
    setState(() {
      R = reverse;
    });
  }
}
