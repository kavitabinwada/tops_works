import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Person {
  String name;
  String contNum;

  Person(this.name, this.contNum);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass68());
  }
}

class Ass68 extends StatefulWidget {
  @override
  State<Ass68> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Ass68> {
  @override
  Widget build(BuildContext context) {
    List<Person> contactList = [
      Person('Shriva', '9825675674'),
      Person('Rudra', '9874566733'),
      Person('Rupa', '9874566731'),
      Person('Arya', '9874566732'),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Person List'),
        ),
        body: contactList.isEmpty
            ? Center(child: Text('No contact'))
            : ListView.builder(
                itemCount: contactList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(contactList[index].name),
                      subtitle: Text(contactList[index].contNum),
                      trailing: PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text('Edit'),
                            onTap: () {},
                          ),
                          PopupMenuItem(
                            child: Text('View'),
                            onTap: () {},
                          ),
                          PopupMenuItem(
                            child: Text('Delete'),
                            onTap: () {},
                          )
                        ],
                      ));
                },
              ));
  }
}
