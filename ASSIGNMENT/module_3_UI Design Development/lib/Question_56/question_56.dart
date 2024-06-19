import 'package:flutter/material.dart';

class Ass56 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 56'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              child: Image.asset(
                fit: BoxFit.fill,
                'assets/image'
                's/flower2.jpeg',
                width: 150,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    'assets/images/flower4.jpeg',
                    width: 120,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'My flutter app',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.cyan),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    fit: BoxFit.fill,
                    'assets/images/flower4.jpeg',
                    width: 120,
                  ),
                ),
              ],
            ),
            Container(
              height: 120,
              width: 120,
              child: Image.asset(
                fit: BoxFit.fill,
                'assets/images/flower2.jpeg',
                width: 120,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
