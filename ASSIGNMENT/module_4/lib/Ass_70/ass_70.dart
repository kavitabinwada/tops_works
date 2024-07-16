import 'package:flutter/material.dart';
import 'package:module_4/Ass_70/Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bottom Navigation Practical',
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Ass70());
  }
}

class Ass70 extends StatefulWidget {
  const Ass70({super.key});

  @override
  State<Ass70> createState() => _Ass70State();
}

class _Ass70State extends State<Ass70> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Photos(),
    Center(
      child: Text('Audio'),
    ),
    Center(
      child: Text('Video'),
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Gallery'),
          BottomNavigationBarItem(icon: Icon(Icons.audiotrack), label: 'Audio'),
          BottomNavigationBarItem(icon: Icon(Icons.videocam), label: 'Video'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
