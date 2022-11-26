import 'package:flutter/material.dart';
import 'package:weekly3/page/data_user/data_user_page.dart';

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
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DataUser(),
                ),
              );
            },
            leading: Icon(Icons.document_scanner),
            title: Text('Data User'),
          )
        ],
      ),
    );
  }
}
