import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass64());
  }
}

class Ass64 extends StatefulWidget {
  const Ass64({super.key});

  @override
  State<Ass64> createState() => _Ass64State();
}

class _Ass64State extends State<Ass64> {
  String _selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ass 64'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          title: Text('Select City'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RadioListTile(
                                title: Text('Valsad'),
                                value: 'Valsad',
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: Text('Ahmedabad'),
                                value: 'Ahmedabad',
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: Text('Surat'),
                                value: 'Surat',
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: Text('Baroda'),
                                value: 'Baroda',
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: Text('Dahod'),
                                value: 'Dahod',
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: Text('Vapi'),
                                value: 'Vapi',
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                              RadioListTile(
                                title: Text('Rajkot'),
                                value: 'Rajkot',
                                groupValue: _selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedValue = value.toString();
                                  });
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ));
                    },
                  );
                },
                child: Text(
                  'Show Dialog',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                '$_selectedValue',
                style: TextStyle(fontSize: 26),
              )
            ],
          ),
        ));
  }
}
