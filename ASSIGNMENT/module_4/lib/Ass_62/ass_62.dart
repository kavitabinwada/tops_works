import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass_62());
  }
}

class Ass_62 extends StatelessWidget {
  const Ass_62({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ass 62'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    icon: Icon(Icons.person),
                    title: Text('Exit'),
                    content: Text('Are you sure you want to exit'),
                    actions: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.cyan)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel')),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.shade300)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Exit'),
                      )
                    ],
                  );
                });
          },
          child: Text(
            'ShowAlertDialogBox',
            style: TextStyle(color: Colors.deepPurple, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
