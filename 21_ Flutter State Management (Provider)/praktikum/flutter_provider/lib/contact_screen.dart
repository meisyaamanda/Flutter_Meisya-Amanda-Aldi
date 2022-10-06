import 'package:flutter/material.dart';
import 'package:flutter_provider/contact_item_screen.dart';
import 'package:flutter_provider/contact_list_screen.dart';
import 'package:flutter_provider/contact_manager.dart';
import 'package:flutter_provider/empty_screen.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<ContactManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactItemScreen(
                onCreate: (contact) {
                  manager.addContact(contact);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      ),
      body: buildContact(),
    );
  }

  Widget buildContact() {
    return Consumer<ContactManager>(builder: (context, manager, child) {
      if (manager.contactModel.isNotEmpty) {
        return ContactListScreen(
          manager: manager,
        );
      } else {
        return const EmptyScreen();
      }
    });
  }
}
