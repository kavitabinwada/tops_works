import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass63());
  }
}

class Ass63 extends StatelessWidget {
  String SelectChoice = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ass 63')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    icon: Icon(Icons.person),
                    title: Text('Choice'),
                    content: Text('Are you sure to exit?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            SelectChoice = 'Positive';
                            Navigator.pop(context);
                            showToast(SelectChoice);
                          },
                          child: Text('Positive')),
                      TextButton(
                        onPressed: () {
                          SelectChoice = 'Negative';
                          Navigator.pop(context);
                          showToast(SelectChoice);
                        },
                        child: Text('Negative'),
                      ),
                      TextButton(
                        onPressed: () {
                          SelectChoice = 'Neutral';
                          Navigator.pop(context);
                          showToast(SelectChoice);
                        },
                        child: Text('Neutral'),
                      ),
                    ],
                  );
                });
          },
          child: Text('ShowAlertDialogBox'),
        ),
      ),
    );
  }
}

void showToast(choice) {
  Fluttertoast.showToast(
      msg: choice,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.cyanAccent,
      fontSize: 16);
}
