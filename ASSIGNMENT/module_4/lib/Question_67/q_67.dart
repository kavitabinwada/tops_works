import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Ass_67Model.dart';

class Ass67 extends StatelessWidget {
  List<MenuItems> menuItems = [
    MenuItems(
      text: 'Logout',
      icon: Icon(
        Icons.logout_outlined,
        color: Colors.cyan,
      ),
    ),
    MenuItems(
        text: 'Profile',
        icon: Icon(
          Icons.person,
          color: Colors.blueAccent,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ass67'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 0:
                    print('profile option selected');
                    Navigator.pop(context);
                    break;
                  case 1:
                    print('logout option selected');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ));
                    break;
                }
              },
              itemBuilder: (context) => List.generate(
                  menuItems.length,
                  (index) => PopupMenuItem(
                      value: index,
                      child: index != menuItems.length - 1
                          ? ListTile(
                              leading: menuItems[index].icon,
                              title: Text(menuItems[index].text),
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                PopupMenuDivider(),
                                ListTile(
                                  leading: menuItems[index].icon,
                                  title: Text(menuItems[index].text),
                                )
                              ],
                            ))))
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
