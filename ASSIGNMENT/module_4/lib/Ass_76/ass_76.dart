import 'package:flutter/material.dart';
import 'package:module_4/Ass_76/ass_76S2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass_76());
  }
}

class Ass_76 extends StatefulWidget {
  const Ass_76({super.key});

  @override
  State<Ass_76> createState() => _Ass_76State();
}

class _Ass_76State extends State<Ass_76> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  String Answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculation of two numbers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: _num1,
            decoration: InputDecoration(hintText: 'Enter first value'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: _num2,
            decoration: InputDecoration(hintText: 'Enter second value'),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                int Num1 = int.parse(_num1.text);
                int Num2 = int.parse(_num2.text);
                int Answer = Num1 + Num2;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen2(output: Answer),
                    ));
              },
              child: Text('Submit'))
        ],
      ),
    );
  }
}
