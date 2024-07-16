import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'model.dart';
import '';

class Ass78 extends StatefulWidget {
  const Ass78({super.key});

  @override
  State<Ass78> createState() => _Ass78State();
}

class _Ass78State extends State<Ass78> {
  List<User> userList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ass78'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          User user = userList[index];
          return ListTile(
            onLongPress: () {
              showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(100, 150, 0, 0),
                  items: <PopupMenuEntry>[
                    PopupMenuItem(value: 'edit', child: Text('Edit')),
                    PopupMenuItem(value: 'delete', child: Text('Delete'))
                  ]).then((value) {
                if (value == 'edit') {
                  showmodalBottomSheet(context: context, user: user);
                } else if (value == 'delete') {
                  removeList(user, context);
                }
              });
            },
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                '${user.name?.toUpperCase()[0]}',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            title: Text(
              '${user.name}',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('${user.email}\n${user.contact}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showmodalBottomSheet(context: context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }

  void showmodalBottomSheet({required BuildContext context, User? user}) {
    final _nameController =
        TextEditingController(text: user != null ? user.name : '');
    final _emailController =
        TextEditingController(text: user != null ? user.email : '');
    final _contactController =
        TextEditingController(text: user != null ? user.contact : '');
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom + 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: 'Enter name'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(hintText: 'Enter email'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _contactController,
                  decoration: InputDecoration(hintText: 'Enter contactnumber'),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  child: FilledButton(
                      onPressed: () {
                        String _name = _nameController.text.trim();
                        String _email = _emailController.text.trim();
                        String _contact = _contactController.text.trim();
                        var M = User(
                          name: _name,
                          email: _email,
                          contact: _contact,
                          uuid: user != null ? user.uuid : getUserId(),
                        );
                        print(
                            'name:$_name\n email:$_email\n contact:$_contact)');
                        if (user == null) {
                          addUser(M, context);
                        } else {
                          var updateuser = updateUser(M, context);
                        }
                      },
                      child: Text(user == null ? 'ADD' : 'UPDATE')),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void removeList(User user, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete'),
          content: Text('Are you sure delete this user'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text('Cancel')),
            TextButton(
                onPressed: () {
                  setState(() {
                    userList
                        .removeWhere((element) => element.uuid == user.uuid);
                  });
                  Navigator.pop(context);
                },
                child: Text('Sure'))
          ],
        );
      },
    );
  }

  void addUser(User user, BuildContext context) {
    setState(() {
      userList.add(user);
    });
    Navigator.pop(context);
  }

  updateUser(User user, BuildContext context) {
    int index = userList.indexWhere((element) => element.uuid == user.uuid);
    setState(() {
      userList[index] = user;
    });
    Navigator.pop(context);
  }
}

String getUserId() {
  var uuid = Uuid();
  return uuid.v4();
}
