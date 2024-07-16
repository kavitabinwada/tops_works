import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass65());
  }
}

class Ass65 extends StatelessWidget {
  const Ass65({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          bool exit = await ShowAlertDialog(context) ?? false;
          return exit;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Text('Go back'),
          ),
        ));
  }

  Future<bool> ShowAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: Icon(Icons.person),
          title: Text('exit'),
          content: Text('Are you sure you want to exit?'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text('Cancel')),
            TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text('exit'))
          ],
        );
      },
    );
  }
}
