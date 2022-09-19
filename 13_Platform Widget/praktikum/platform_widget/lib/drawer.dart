import 'package:flutter/material.dart';

class drawerlist extends StatelessWidget {
  const drawerlist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text('Meisya Amanda'),
              accountEmail: Text('+6281270214415'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/image/gambar.jpg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/hutan.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('New Group'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('New Secret Chat'),
          ),
          ListTile(
            leading: Icon(Icons.campaign),
            title: Text('New Channel'),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contacts'),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invite Friend'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Telegram FAQ'),
          ),
        ],
      ),
    );
  }
}
