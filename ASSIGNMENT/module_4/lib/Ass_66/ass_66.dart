import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass66());
  }
}

class Ass66 extends StatefulWidget {
  @override
  State<Ass66> createState() => _Ass66State();
}

class _Ass66State extends State<Ass66> {
  String? _selectedDate;
  DateTime _currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext, context) async {
    final DateTime? picked = await showDatePicker(
        context: context, firstDate: DateTime(2015), lastDate: DateTime(2025));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(
            onPressed: () async {
              var _date = await showDatePicker(
                  currentDate: _currentDate,
                  context: context,
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2050));
              setState(() {
                _selectedDate = _date.toString().split(' ')[0];
              });
              print(_selectedDate);
            },
            child: Text('Select Date'),
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            'Date Selected : ${_selectedDate}',
            style: TextStyle(fontSize: 23),
          ),
        ],
      )),
    );
  }
}
