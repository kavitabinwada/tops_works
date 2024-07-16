import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass_77());
  }
}

class Ass_77 extends StatefulWidget {
  const Ass_77({super.key});

  @override
  State<Ass_77> createState() => _Ass_77State();
}

class _Ass_77State extends State<Ass_77> {
  TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send call or message'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your contact',
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0))),
                    controller: _number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            String num = _number.text.toString();
                            SendSms(num);
                          },
                          child: Text('Send Message')),
                      ElevatedButton(
                          onPressed: () {
                            String num = _number.text.toString();
                            SendCall(num);
                          },
                          child: Text('Send Call'))
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }

  void SendCall(String num) async {
    String url = 'tel:$num';
    try {
      launchUrlString(url);
    } catch (e) {
      print(e.toString());
    }
  }

  void SendSms(String num) async {
    String message = 'Hello';
    String url = 'sms:$num?body=$message';
    try {
      launchUrlString(url);
    } catch (e) {
      print(e);
    }
  }
}
