import 'package:flutter/material.dart';
import 'package:module_4/Ass_74/ass_74Screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Ass74Screen(),
    );
  }
}

class Ass74Screen extends StatelessWidget {
  const Ass74Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen1'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ass74Screen2(),
                      ));
                },
                child: Text('Click to next activity'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
