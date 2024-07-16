import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Ass_69());
  }
}

class Ass_69 extends StatefulWidget {
  const Ass_69({super.key});

  @override
  State<Ass_69> createState() => _Ass_69State();
}

class _Ass_69State extends State<Ass_69> {
  List<Widget> _widgetList = [
    Container(
      height: 200,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'All Inboxes',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  'Email from User ${index + 1}\n Email from'
                  'User to Describe',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                leading: Column(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person),
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    ),
    Center(
      child: Text('Primary'),
    ),
    Center(
      child: Text('Social'),
    ),
    Center(
      child: Text('Promotions'),
    ),
  ];
  var selectIndex = 0;
  itemClicked(int index, BuildContext context) {
    setState(() {
      selectIndex = index;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Builder(builder: (context) {
            return Column(
              children: [
                SizedBox(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: DrawerButton(
                          style: ButtonStyle(
                              iconColor:
                                  MaterialStatePropertyAll(Colors.black)),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          child: CircleAvatar(
                            maxRadius: 15,
                            child: Text(
                              'Us',
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.purple,
                          ),
                        )),
                  ),
                ),
                Expanded(child: _widgetList[selectIndex])
              ],
            );
          }),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Container(
                          height: 28,
                          child: Image.asset('assets/images/gmaillogo2.png')),
                      radius: 25,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gmail',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80),
                            bottomRight: Radius.circular(50))),
                    selected: selectIndex == 0,
                    selectedTileColor: Colors.grey.shade400,
                    onTap: () {
                      itemClicked(0, context);
                    },
                    title: Text(
                      'All inboxes',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(Icons.all_inbox),
                  ),
                ),
                Divider(
                  indent: 58,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  selected: selectIndex == 1,
                  selectedTileColor: Colors.grey.shade400,
                  onTap: () {
                    itemClicked(0, context);
                  },
                  title: Text(
                    'Primary',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.inbox),
                ),
                Divider(
                  indent: 58,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80),
                            bottomRight: Radius.circular(50))),
                    selected: selectIndex == 2,
                    selectedTileColor: Colors.grey.shade400,
                    onTap: () {
                      itemClicked(0, context);
                    },
                    title: Text(
                      'Social',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(Icons.group_outlined),
                  ),
                ),
                Divider(
                  indent: 58,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80),
                            bottomRight: Radius.circular(50))),
                    selected: selectIndex == 3,
                    selectedTileColor: Colors.grey.shade400,
                    onTap: () {
                      itemClicked(0, context);
                    },
                    title: Text(
                      'Promotions',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    leading: Icon(Icons.discount_outlined),
                  ),
                ),
                Divider(
                  indent: 58,
                ),
                ListTile(
                  title: Text(
                    'Snoozed',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.access_time_outlined),
                ),
                ListTile(
                  title: Text(
                    'Send',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.send_outlined),
                ),
                ListTile(
                  title: Text(
                    'Scheduled',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.send_and_archive_outlined),
                ),
                ListTile(
                  title: Text(
                    'OutBox',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.outbox),
                ),
                ListTile(
                  title: Text(
                    'Drafts',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.insert_drive_file_outlined),
                ),
                ListTile(
                  title: Text(
                    'All Emails',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.mark_as_unread_outlined),
                ),
                ListTile(
                  title: Text(
                    'Spam',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.report_gmailerrorred_outlined),
                ),
                ListTile(
                  title: Text(
                    'Bin',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.delete_outline_outlined),
                ),
                Divider(
                  indent: 58,
                ),
                ListTile(
                  title: Text(
                    'Create new',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.add),
                ),
                Divider(
                  indent: 58,
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.settings_outlined),
                ),
                ListTile(
                  title: Text(
                    'Send feedback',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.messenger_outline),
                ),
                ListTile(
                  title: Text(
                    'Help',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(Icons.help_outlined),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
