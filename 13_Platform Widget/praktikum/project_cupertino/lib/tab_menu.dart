import 'package:flutter/material.dart';

class tabmenu extends StatefulWidget {
  const tabmenu({Key? key}) : super(key: key);

  @override
  State<tabmenu> createState() => _TabMenuState();
}

class _TabMenuState extends State<tabmenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'All Chats',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Work',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Unread',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Personal',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.transparent,
                width: 50,
                height: 5,
              ),
              Container(
                color: Colors.transparent,
                width: 50,
                height: 5,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 5,
              ),
              Container(
                color: Colors.transparent,
                width: 50,
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
