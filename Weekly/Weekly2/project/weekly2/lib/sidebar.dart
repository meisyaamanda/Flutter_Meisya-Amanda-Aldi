import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.contact_support),
            title: Text('Contact Us'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
          ),ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
          ),
        ],
      ),
    );
  }
}
