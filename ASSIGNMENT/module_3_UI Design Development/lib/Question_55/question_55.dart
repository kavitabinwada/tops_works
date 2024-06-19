import 'package:flutter/material.dart';

class Ass55 extends StatefulWidget {
  @override
  State<Ass55> createState() => _MyHomePAgeState();
}

class _MyHomePAgeState extends State<Ass55> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) => setState(() {
                isChecked = value!;
              }),
            ),
            if (isChecked == true)
              Text(
                'CheckBox is Checked',
                style: TextStyle(fontSize: 20),
              )
          ],
        ),
      ),
    );
  }
}
