import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass75());
  }
}

class Ass75 extends StatefulWidget {
  const Ass75({super.key});

  @override
  State<Ass75> createState() {
    Fluttertoast.showToast(msg: 'Create State', toastLength: Toast.LENGTH_LONG);
    return _Ass75State();
  }
}

class _Ass75State extends State<Ass75> {
  @override
  void initState() {
    Fluttertoast.showToast(msg: 'Init State', toastLength: Toast.LENGTH_LONG);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Fluttertoast.showToast(msg: 'Build Method', toastLength: Toast.LENGTH_LONG);
    return Scaffold(
      appBar: AppBar(
        title: Text('Ass 75'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    Fluttertoast.showToast(
        msg: 'didChangeDependencies method', toastLength: Toast.LENGTH_LONG);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Ass75 oldWidget) {
    Fluttertoast.showToast(
        msg: 'didUpdate Widget', toastLength: Toast.LENGTH_LONG);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    Fluttertoast.showToast(
        msg: 'Deactivate state', toastLength: Toast.LENGTH_LONG);
    super.deactivate();
  }

  @override
  void dispose() {
    Fluttertoast.showToast(
        msg: 'Dispose Widget', toastLength: Toast.LENGTH_LONG);
    super.dispose();
  }
}
