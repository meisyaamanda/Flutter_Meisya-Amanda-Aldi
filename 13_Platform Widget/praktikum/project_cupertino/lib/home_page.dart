import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_cupertino/call.dart';
import 'package:project_cupertino/chat.dart';
import 'package:project_cupertino/chat_model.dart';
import 'package:project_cupertino/contacs.dart';
import 'package:project_cupertino/settings.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Widget> data = [const contacts(), const call(), const ChatsPage(), const settings()];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          middle: Text(
            'Chats',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(
            CupertinoIcons.create_solid,
            size: 20,
          ),
        ),
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin), label: 'Contacts'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call), label: 'Calls'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Chats'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings_solid), label: 'Settings'), 
            ]),
            tabBuilder: (context, index){
              return CupertinoTabView(
                builder: (context){
                  return data[index];
                },
              );
            }));
  }
}
